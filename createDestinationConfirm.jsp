<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"/></script>
<link rel="stylesheet" type="text/css" href="./css/mars.css">
<title></title>
<script type="text/javascript">
  function submitAction(url){
	  $('form').attr('action',url);
	  $('form').submit();
  }
</script>
</head>
<body>

<jsp:include page="header.jsp"/>
<div id="main">
<div>
  <h1>宛先情報入力確認画面</h1>
</div>
<div>
  <s:form action="CreateDestinationCompleteAction">
    <table class="t1">
      <tr>
        <th><label>姓</label></th>
        <td><s:property value="familyName" escape="false"/><s:hidden name="familyName" value="%{familyName}"/></td>
      </tr>
      <tr>
        <th><label>名</label></th>
        <td><s:property value="firstName" escape="false"/><s:hidden name="firstName" value="%{firstName}"/></td>
      </tr>
      <tr>
        <th><label>姓ふりがな</label></th>
        <td><s:property value="familyNameKana" escape="false"/><s:hidden name="familyNameKana" value="%{familyNameKana}"/></td>
      </tr>
      <tr>
        <th><label>名ふりがな</label></th>
        <td><s:property value="firstNameKana" escape="false"/><s:hidden name="firstNameKana" value="%{firstNameKana}"/></td>
      </tr>
      <tr>
        <th><label>住所</label></th>
        <td><s:property value="userAddress" escape="false"/><s:hidden name="userAddress" value="%{userAddress}"/></td>
      </tr>
      <tr>
        <th><label>電話番号</label></th>
        <td><s:property value="telNumber" escape="false"/><s:hidden name="telNumber" value="%{telNumber}"/></td>
      </tr>
      <tr>
        <th><label>メールアドレス</label></th>
        <td><s:property value="email" escape="false"/><s:hidden name="email" value="%{email}"/></td>
      </tr>
    </table>
    <div class="submit">
    <input type="button" value="登録" class="submit_btn" onclick="submitAction('CreateDestinationCompleteAction')"/>
    <p>　</p>
    <input type="button" value="戻る" class="submit_btn" onclick="submitAction('CreateDestinationAction')"/>
    </div>
  </s:form>
</div>
</div>

</body>
</html>