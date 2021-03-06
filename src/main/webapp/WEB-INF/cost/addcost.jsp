<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="${rootPath }css/bootstrap.css">
<link rel="stylesheet" href="${rootPath }css/smoothness/jquery.ui.css" type="text/css" />
<link rel="stylesheet" href="${rootPath }css/style.css" type="text/css" />
<link rel="stylesheet" href="${rootPath }css/resume.css">
<link rel="shortcut icon" type="image/x-icon" href="${rootPath }img/favicon.ico" />
<script type="text/javascript">
	function su(){
		//用class名字得到input组件
			var aTd = document.getElementsByClassName('form-control');
		//confirm打印
			if(confirm("请再次确认提交信息\n\n"+
			"支出时间:"+aTd[0].value+"\n"+
			"支出条目:"+aTd[1].value+"\n"+
			"支出金额:"+aTd[2].value+"\n"+
			"支出工会:"+aTd[3].value+"\n"+
			"报账人:"+aTd[4].value+"\n"+
			"备注"+aTd[6].value)){
			
				return true;
			}else
				return false;
	}
	
	function meg(){
		var mana="${addCostMsg }";
		var bal="${bal }";
		if(mana != '' && mana != null)
			alert(mana+"\n"+bal);
	}
</script>
</head>

<body onload="meg();">
<form action="${rootPath}cost/CostManager_addCost" method="post" onsubmit="return su();">
	<div class="container">
		<div class="row">
			<p class="current">当前位置：首页>>支出</p>
		</div>
	</div>
	<div id="body-one">
		<div class="container-one">
			<div class="row">
				<div
					class="col-lg-4 col-lg-offset-1 col-md-4 col-md-offset-1 col-xs-4 col-xs-offset-2"
					style="margin-left:18%;">
					<div class="col-lg-5 col-md-6  col-xs-6">
						<span>支出时间：</span>
					</div>
					<div class="col-lg-6 col-md-6  col-xs-6">
						<input type="text" name="cost.co_time" class="form-control text" id="date" required="required"/>
					</div>
				</div>
				<div class="col-lg-4 col-md-4  col-xs-4">
					<div class="col-lg-6 col-md-6  col-xs-6">
						<span>支出条目：</span>
					</div>
					<div class="col-lg-6 col-md-6  col-xs-6" style="margin-left:-18%;">
						<select name="cost.co_entry" class="sel2 form-control">
							<c:forEach items="${allEntry}" var="entry">
								<c:if test="${entry.en_type eq '1'}">
									<option value="${entry.en_name}">${entry.en_name}</option>
								</c:if>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div
					class="col-lg-4 col-lg-offset-1 col-md-4 col-md-offset-1 col-xs-4 col-xs-offset-2"
					style="margin-left:18%;">
					<div class="col-lg-5 col-md-6  col-xs-6">
						<span>支出金额:</span>
					</div>
					<div class="col-lg-6 col-md-6  col-xs-6">
						<input type="tel" name="cost.co_money"
							pattern="^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$"
							required oninvalid="setCustomValidity('请输入正确的数字');"
							oninput="setCustomValidity('');" class="form-control" />
					</div>
				</div>
				<div class="col-lg-4 col-md-4  col-xs-4">
					<div class="col-lg-6 col-md-6  col-xs-6">
						<span>支出工会:</span>
					</div>
					<div class="col-lg-6 col-md-6  col-xs-6" style="margin-left:-18%;">
						<select name="cost.co_union" class="form-control">
							<c:forEach items = "${allLabour}" var="union">
							<option value="${union }">${union }</option>			
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div
					class="col-lg-4 col-lg-offset-1 col-md-4 col-md-offset-1 col-xs-4 col-xs-offset-2"
					style="margin-left:18%;">
					<div class="col-lg-5 col-md-6  col-xs-6">
						<span>报账人:</span>
					</div>
					<div class="col-lg-6 col-md-6  col-xs-6">
						<input type="tel" name="cost.co_fortor" required class="form-control" />
					</div>
				</div>
				<div class="col-lg-4 col-md-4  col-xs-4">
					<div class="col-lg-5 col-md-4  col-xs-4">
						<span>经手人:</span>
					</div>
					<div class="col-lg-6 col-md-6  col-xs-6">
						<input type="text" name="cost.co_operator" value="${user.name }" readonly="readonly" class="form-control"  style="margin-left:-5%;">
					</div>
				</div>
			</div>
			<div class="row">
				<div
					class="col-lg-8 col-lg-offset-3 col-md-8 col-md-offset-2 col-xs-8 col-xs-offset-2"
					style="margin-left:18%;">
					<div class="col-lg-2 col-md-2  col-xs-2">
						<span>备注：</span>
					</div>
					<div class="col-lg-6 col-md-6  col-xs-6" style="margin-left:-4%;">
						<textarea class="form-control" rows="5" cols="29"
							name="income.in_remark"></textarea>
					</div>

				</div>
			</div>
			<div class="row">
				<div
					class="col-lg-1 col-lg-offset-9 col-md-1 col-md-offset-9 col-xs-1 col-xs-offset-9"
					style="margin-top:-50px;">
					<button class="btn btn-primary" type="submit">提&nbsp;&nbsp;交</button>
				</div>
			</div>
		</div>
	</div>
</form>

<script src="${rootPath }js/jquery-2.1.4.js"></script>
<script src="${rootPath }js/bootstrap.js"></script>
<script type="text/javascript" src="${rootPath }js/jquery.js"></script>
<script type="text/javascript" src="${rootPath }js/jquery.ui.js"></script>
<script type="text/javascript" src="${rootPath }js/datetime.js"></script>
</body>
</html>











<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="utf-8"> -->
<!-- 	<title>增加收入</title> -->
<%-- 	<link rel="stylesheet" type="text/css" href="${rootPath }css/add.css"> --%>
<%-- 	<link rel="stylesheet" type="text/css" href="${rootPath }css/button.css"> --%>
<!-- </head> -->
<!-- <body> -->
<!--  <form class="mod" action="" method="post">增加 -->
<%-- 		  <p class="po">${addCostMsg}</p> --%>
<!--    			 <table class="box2"> -->
<!--    			 	<tr class="text2">  -->
<!-- 					<td><span>支出时间:</span></td> -->
<!--    			 		<td><input type="text" class="sang_Calender" name="cost.co_time" required id="inp"></td> -->
<%--    			 		<script type="text/javascript" src="${rootPath }js/datetime.js"></script> --%>
<!--    			 	</tr> -->
<!--    			 	<tr class="text2">  -->
<!-- 					<td><span>支出条目:</span></td> -->
<!--    			 		<td> -->
<!--    			 			<select name="cost.co_entry" class="sel2"> -->
<%-- 						<c:forEach items = "${allEntry}" var="entry"> --%>
<%-- 							<c:if test="${entry.en_type eq '1'}"><option value="${entry.en_name}">${entry.en_name}</option></c:if> --%>
<%-- 						</c:forEach> --%>
<!-- 						</select> -->
<!-- 					</td> -->
<!--    			 	</tr> -->
<!--    			 	<tr class="text2">  -->
<!-- 					<td><span>金额:</span></td> -->
<!--    			 		<td><input type="tel" name="cost.co_money" class="inp" pattern="^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$" required  -->
<!--    			 		oninvalid="setCustomValidity('请输入正确的数字');" oninput="setCustomValidity('');"/></td> -->
<!--    			 	</tr> -->
<!--    			 	<tr class="text2">  -->
<!-- 					<td><span>操作人姓名:</span></td> -->
<%--    			 		<td><input type="text" name="cost.co_operator" value="${manager.name }" readonly="readonly" class="inp"></td> --%>
<!--    			 	</tr> -->
<!--    			 	<tr class="text2">  -->
<!-- 					<td><span>操作工会:</span></td> -->
<!--    			 		<td><select name="cost.co_union" class="sel2"> -->
<%-- 							<c:forEach items = "${allLabour}" var="union"> --%>
<%-- 							<option value="${union }">${union }</option>			 --%>
<%-- 							</c:forEach> --%>
<!-- 						</select> -->
<!-- 					</td> -->
<!--    			 	</tr> -->
<!--    			 	<tr class="text2">  -->
<!-- 					<td><span>备注:</span></td> -->
<!--    			 		<td> -->
<!--    			 		<textarea rows="5" cols="20" name="cost.co_remark" style="margin-left:20px;border-radius:5px"></textarea> -->
<!--    			 		</td> -->
<!--    			 	</tr> -->
<!--    			 	<tr class="text2">  -->
<!-- 		 			<td> -->
<!-- 		 				<button class="hi-icon hi-icon-archive" type="submit" style="border:none;margin-left:150px;margin-top:100px;">提&nbsp;&nbsp;交</button> -->
<!-- 		 			</td> -->
<!--    			 	</tr> -->
<!-- 			 </table> -->
<!-- </form>增加收入 -->
<!-- </body> -->
<!-- </html> -->