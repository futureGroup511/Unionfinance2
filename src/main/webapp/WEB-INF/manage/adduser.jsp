<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>添加用户</title>
<link rel="stylesheet" href="${rootPath }css/bootstrap.css">
<link rel="stylesheet" href="${rootPath }css/ma-four.css">
<script type="text/javascript">
	function su(){
		//用class名字得到input组件
			var aTd = document.getElementsByClassName('form-control');
			var aTs = document.getElementsByClassName("sel2")[0];
		//用input.value
			var id = "";
			if(aTs.value == "manage"){
				id = "拨款管理";
			}else if(aTs.value == "cost"){
				id = "支出管理";
			}else{
				id = "分会主席";
			}
		//confirm打印
			if(confirm("请再次确认提交信息\n\n"+
			"用户名:"+aTd[0].value+"\n"+
			"密码:"+aTd[1].value+"\n"+
			"身份:"+id+"\n"+
			"姓名:"+aTd[2].value+"\n"+
			"所属分会:"+aTd[3].value+"\n"+
			"手机号码:"+aTd[4].value)){
				return true;
			}else
				return false;
	}
	function meg(){
		var mana="${addMsg }";
		if(mana != '' && mana != null)
			alert(mana);
	}
</script>
</head>

<body onload="meg();">
<form action="${rootPath}manage/UserManager_addUser" method="post" onSubmit="return su();">
<div class="container">
  <div class="row">
        <div>
            <p>当前位置：用户管理>>添加用户</p>
        </div>
  </div>
</div>
<div id="body-one">
 <div class="container-one">
   <div class="row">
      <div class="col-lg-4 col-lg-offset-3 col-md-4 col-md-offset-2 col-xs-4 col-xs-offset-2" style="margin-left:18%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>用户名：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
			<input name="user.account" type="text" value="" required class="form-control">
         </div>
      </div>
      <div class="col-lg-4 col-md-4  col-xs-4">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>密码：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input name="user.password" type="text" value="" required class="form-control">
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-4 col-lg-offset-3 col-md-4 col-md-offset-2 col-xs-4 col-xs-offset-2" style="margin-left:18%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>身份：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <select name="user.identity" class="sel2">
				<option value="manage">拨款管理</option>
				<option value="cost">支出管理</option>
				<option value="ordinary">分会主席</option>
	        </select>
         </div>
      </div>
      <div class="col-lg-4 col-md-4  col-xs-4">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>姓名：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input name="user.name" type="text" value="" required class="form-control">
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-4 col-lg-offset-3 col-md-4 col-md-offset-2 col-xs-4 col-xs-offset-2" style="margin-left:18%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>所属分会：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input name="user.company" type="text" value="" required class="form-control">
         </div>
      </div>
      <div class="col-lg-4 col-md-4 col-xs-4">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>手机号：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="tel" name="user.number" class="form-control" pattern="^1[3-9]\d{9}$" required 
   			 		oninvalid="setCustomValidity('请输入11位手机号');" oninput="setCustomValidity('');"
   			 		placeholder="请正确输入11位手机号码"/>
         </div>
      </div>
   </div>
     <div class="row">
      <div class="col-lg-1 col-lg-offset-9 col-md-1 col-md-offset-9 col-xs-1 col-xs-offset-9">
         <button class="btn btn-primary" type="submit">提&nbsp;&nbsp;交</button>
         <a href="${rootPath }manage/UserManager" target="ifr">
         	<button class="btn btn-primary right" type="button">返&nbsp;&nbsp;回</button>
         </a>
      </div>
   </div>
 </div>
</div>
</form>
<script src="${rootPath }js/jquery-2.1.4.js"></script>
<script src="${rootPath }js/bootstrap.js"></script>
</body>
</html>


<!-- //获得所有工会不重复map集合方法 -->
<!-- <select name="user.company" class="sel2"> -->
<%-- 				       		<c:forEach items = "${allLabour}" var="union"> --%>
<%-- 								<option value="${union }">${union }</option> --%>
<%-- 							</c:forEach> --%>
<!--          				</select> -->