<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
     <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="tasuku" items="${Model}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${tasuku.id}">
                        <c:out value="${tasuku.id}" />
                    </a>
                    ：<c:out value="${tasuku.title}"></c:out> &gt; <c:out value="${tasuku.content}" />
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">新規内容の投稿</a></p>

    </c:param>
</c:import>