<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<table data-toggle="table" data-url="data2.json" data-height="246" data-pagination="true">
    <thead>
        <tr>
            <th data-field="state" data-checkbox="true"></th>
            <th data-field="id" data-align="right">Item ID</th>
            <th data-field="name" data-align="center">Item Name</th>
            <th data-field="price" data-align="">Item Price</th>
        </tr>
        <c:if test="${!empty listUser }">
				<c:forEach items="${listUser}" var="list">
					<tr>
						<td>${list.username }</td>
						<td>${list.password }</td>	
					</tr>				
				</c:forEach>
			</c:if>
    </thead>
</table>