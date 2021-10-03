<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">User_ID</th>
        <th scope="col">Report</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="reportList" items="${reportList}">
        <tr>
            <td><c:out value="${reportList.getId()}"/></td>
            <td><c:out value="${reportList.getUser_id()}"/></td>
            <td><c:out value="${reportList.getConten()}"/></td>
            <td>
                <a href="/webblogservlet?action=deleteReport&id=${reportList.getId()}"  onclick="return confirm('Bạn muốn xoá không?');">
                    <button type="button" class="btn-outline-primary">
                        DELETE
                    </button>
                </a>
                <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#reply">
                    Trả lời
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>