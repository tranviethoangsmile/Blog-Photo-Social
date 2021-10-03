<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">UserName</th>
        <th scope="col">Infomation</th>
        <th scope="col">Birtday</th>
        <th scope="col">Photo</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="users" items="${sessionScope.userList}">
        <tr id="${users.getUserName()}">
            <td><c:out value="${users.getId()}"/></td>
            <td><c:out value="${users.getUserName()}"/></td>
            <td><c:out value="${users.getInfomation()}"/></td>
            <td><c:out value="${users.getBirthday()}"/></td>
            <td><img src="<c:out value="${users.getPhoto()}"/>" width="50px" height="50px"></td>
            <td>
                <a href="/webblogservlet?action=deleteUser&name=${users.getUserName()}"  onclick="return confirm('Có chắc chắn xoá không?');">
                    <button onclick="changerColor()" type="button" class="btn-outline-primary">
                        CẤM
                    </button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
