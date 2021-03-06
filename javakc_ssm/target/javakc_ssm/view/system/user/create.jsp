<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>用户添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/user/create.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
                    <fieldset>
						<legend>用户基本信息 </legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="username">用户名</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="username" name="userName" type="text" placeholder="填写用户名称"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                           <label for="disabledSelect" class="col-sm-2 control-label">用户性别</label>
                           <div class="col-sm-10">
                              <zhg:select name="userSex" codeTp="sex" def="true" cls="form-control"></zhg:select>
                           </div>
                        </div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="loginname">登陆名称</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="loginname" name="loginName" type="text" placeholder="填写登陆名称"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="loginpass">登陆密码</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="loginpass" name="loginPass" type="password" placeholder="填写登陆密码"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="retypepass">确认密码</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="retypepass" name="retypepass" type="password" placeholder="请确认登陆密码"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="email">电子邮件</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="email" name="userEmail" type="email" placeholder="请填写电子邮件"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="phone">手机号码</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="phone" name="userPhone" type="text" placeholder="请填写手机号码"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="phone">绑定角色</label>
                          	<div class="col-sm-10">
                            	<c:forEach var="role" items="${roleList}">
                            		<label class="checkbox-inline">
									  	<input type="checkbox" name="roleIds" value="${role.roleId }" />${role.roleName }
									</label>
                            	</c:forEach>
                          	</div>
                       	</div>
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="submit" value="提交" class="btn btn-primary"/>
                           </div>
                           <label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="reset" value="重置" class="btn btn-danger"/>
                           </div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/view/system/user/js/user.js"></script>
</html>