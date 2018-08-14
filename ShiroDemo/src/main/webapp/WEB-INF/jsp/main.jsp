<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<div class="page-title">
	<div class="title_left">
		<h3>
			欢迎你：<shiro:principal></shiro:principal><shiro:guest>游客，<a href="${pageContext.request.contextPath }/tologin">去登陆</a></shiro:guest><strong></strong>
		</h3>
	</div>
</div>
<div class="clearfix"></div>
<%@include file="common/footer.jsp"%>
