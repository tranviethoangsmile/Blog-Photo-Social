<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Addmin trả lời</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="replyList" items="${replyList}">
        <tr>
            <td><c:out value="${replyList.getConten()}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>