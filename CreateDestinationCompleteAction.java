package com.internousdev.mars.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.mars.dao.DestinationInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class CreateDestinationCompleteAction extends ActionSupport implements SessionAware {

	private String userId;
	private String familyName;
	private String firstName;
	private String familyNameKana;
	private String firstNameKana;
	private String email;
	private String telNumber;
	private String userAddress;
	private Map<String,Object> session;

	private DestinationInfoDAO destinationInfoDao=new DestinationInfoDAO();

	public String execute(){
		//セッションタイムアウト確認
		if(session.isEmpty()){
			return "sessionError";
		}

		// sessionから取り出す。(value値書き換え防止の為)
		userId=session.get("userId").toString();
		familyName=session.get("familyName").toString();
		firstName=session.get("firstName").toString();
		familyNameKana=session.get("familyNameKana").toString();
		firstNameKana=session.get("firstNameKana").toString();
		userAddress=session.get("userAddress").toString();
		telNumber=session.get("telNumber").toString();
		email=session.get("email").toString();

		String result=ERROR;

		// DAOを通してDBにinsertする
		int count=destinationInfoDao.insert(userId,familyName,firstName,familyNameKana,firstNameKana,email,telNumber,userAddress);
		if(count>0){
			result=SUCCESS;
		}

		return result;
	}

	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session){
		this.session=session;
	}

}