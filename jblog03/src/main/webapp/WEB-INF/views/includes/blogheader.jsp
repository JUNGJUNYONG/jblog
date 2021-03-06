<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
	<c:if test="${authUser.id == id }">
				<li><a href="${pageContext.request.contextPath}/${authUser.id}/admin/basic">블로그 관리</a></li>
	</c:if>
	<c:choose>
		<c:when test="${authUser != null }">
			<li><a href="${pageContext.request.contextPath}/${authUser.id}">MY BLOG</a></li>
			<ul>
				<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
			</ul>
		</c:when>
		<c:otherwise>
			<li><a href="${pageContext.request.contextPath}/user/login">로그인</a></li>
		</c:otherwise>
	</c:choose>
	
