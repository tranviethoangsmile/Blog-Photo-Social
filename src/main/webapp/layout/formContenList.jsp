<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">User_ID</th>
        <th scope="col">Content</th>
        <th scope="col">Time</th>
        <th scope="col">Photo</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="listConten" items="${listConten}">
        <tr>
            <td><c:out value="${listConten.getId()}"/></td>
            <td><c:out value="${listConten.getUser_id()}"/></td>
            <td><c:out value="${listConten.getConten()}"/></td>
            <td><c:out value="${listConten.getTime()}"/></td>
            <td><img src="<c:out value="${listConten.getPhoto()}"/>" width="50px" height="50px"></td>
            <td>

                <a href="/webblogservlet?action=deleteConten&id=${listConten.getId()}">
                    <button type="button" class="btn-outline-primary">
                        DELETE
                    </button>
                </a>

            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>