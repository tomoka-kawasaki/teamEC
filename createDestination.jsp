<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/mars.css">
<title></title>
</head>
<body>

<jsp:include page="header.jsp"/>
<div id="main">
<div>
  <h1>宛先情報入力画面</h1>
</div>

  <s:if test="!familyNameErrorMessageList.isEmpty()">
   <div class="error">
    <s:iterator value="familyNameErrorMessageList"><s:property/><br></s:iterator>
   </div>
  </s:if>
  <s:if test="!firstNameErrorMessageList.isEmpty()">
   <div class="error">
    <s:iterator value="firstNameErrorMessageList"><s:property /><br></s:iterator>
   </div>
  </s:if>
  <s:if test="!familyNameKanaErrorMessageList.isEmpty()">
   <div class="error">
    <s:iterator value="familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
   </div>
  </s:if>
  <s:if test="!firstNameKanaErrorMessageList.isEmpty()">
   <div class="error">
    <s:iterator value="firstNameKanaErrorMessageList"><s:property /><br></s:iterator>
   </div>
  </s:if>
  <s:if test="!userAddressErrorMessageList.isEmpty()">
   <div class="error">
    <s:iterator value="userAddressErrorMessageList"><s:property /><br></s:iterator>
   </div>
  </s:if>
  <s:if test="!telNumberErrorMessageList.isEmpty()">
   <div class="error">
    <s:iterator value="telNumberErrorMessageList"><s:property /><br></s:iterator>
   </div>
  </s:if>
  <s:if test="!emailErrorMessageList.isEmpty()">
   <div class="error">
    <s:iterator value="emailErrorMessageList"><s:property /><br></s:iterator>
   </div>
  </s:if>

<div>
  <s:form action="CreateDestinationConfirmAction">
    <table class="t1">
      <tr>
        <th><label>姓</label></th>
        <td><s:textfield name="familyName" placeholder="姓" class="textfield"/></td>
      </tr>
      <tr>
        <th><label>名</label></th>
        <td><s:textfield name="firstName" placeholder="名" class="textfield"/></td>
      </tr>
      <tr>
        <th><label>姓ふりがな</label></th>
        <td><s:textfield name="familyNameKana" placeholder="姓ふりがな" class="textfield"/></td>
      </tr>
      <tr>
        <th><label>名ふりがな</label></th>
        <td><s:textfield name="firstNameKana" placeholder="名ふりがな" class="textfield"/></td>
      </tr>
      <tr>
        <th><label>住所</label></th>
        <td><s:textfield name="userAddress" placeholder="住所" class="textfield"/></td>
      </tr>
      <tr>
        <th><label>電話番号</label></th>
        <td><s:textfield name="telNumber" placeholder="電話番号" class="textfield"/></td>
      </tr>
      <tr>
        <th><label>メールアドレス</label></th>
        <td><s:textfield name="email" placeholder="メールアドレス" class="textfield"/></td>
      </tr>
    </table>
    <s:submit value="確認" class="submit_btn"/>
  </s:form>
</div>
</div>
</body>
</html>