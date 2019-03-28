package com.internousdev.mars.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.mars.dto.DestinationInfoDTO;
import com.internousdev.mars.util.DBConnector;

public class DestinationInfoDAO {

	DBConnector dbConnector=new DBConnector();
	Connection connection=dbConnector.getConnection();

	// insert用
	public int insert(String userId,String familyName,String firstName,String familyNameKana,String firstNameKana,String email,String telNumber,String userAddress){
		int count=0;
		String sql="insert into destination_info(user_id,family_name,first_name,family_name_kana,first_name_kana,email,tel_number,user_address,regist_date,update_date) values(?,?,?,?,?,?,?,?,now(),now())";

		try{
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,userId);
			preparedStatement.setString(2,familyName);
			preparedStatement.setString(3,firstName);
			preparedStatement.setString(4,familyNameKana);
			preparedStatement.setString(5,firstNameKana);
			preparedStatement.setString(6,email);
			preparedStatement.setString(7,telNumber);
			preparedStatement.setString(8,userAddress);
			count=preparedStatement.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				connection.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return count;
	}

	// select用
	public List<DestinationInfoDTO> getDestinationInfo(String userId){

		List<DestinationInfoDTO> destinationInfoList=new ArrayList<DestinationInfoDTO>();
		String sql="select * from destination_info where user_id=? order by regist_date asc";

		try{
			connection=dbConnector.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,userId);
			ResultSet resultSet=preparedStatement.executeQuery();

			// 繰り返してsetする
			while(resultSet.next()){
				DestinationInfoDTO destinationInfoDto=new DestinationInfoDTO();
				destinationInfoDto.setId(resultSet.getInt("id"));
				destinationInfoDto.setUserId(resultSet.getString("user_id"));
				destinationInfoDto.setFamilyName(resultSet.getString("family_name"));
				destinationInfoDto.setFirstName(resultSet.getString("first_name"));
				destinationInfoDto.setFamilyNameKana(resultSet.getString("family_name_kana"));
				destinationInfoDto.setFirstNameKana(resultSet.getString("first_name_kana"));
				destinationInfoDto.setUserAddress(resultSet.getString("user_address"));
				destinationInfoDto.setEmail(resultSet.getString("email"));
				destinationInfoDto.setTelNumber(resultSet.getString("tel_number"));
				destinationInfoDto.setRegistDate(resultSet.getDate("regist_date"));
				destinationInfoList.add(destinationInfoDto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				connection.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return destinationInfoList;
	}

}