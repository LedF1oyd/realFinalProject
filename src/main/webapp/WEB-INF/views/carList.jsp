<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@page import="com.crud.board.dao.BoardDAO, com.crud.board.bean.BoardVO,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <script>
        function delete_ok(id){
            const a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='delete_ok/'+id;
        }
    </script>
</head>
<body>
<table>
    <h1>자동차게시판</h1>


    <table border="1" id = "list2" width="90%">

        <th>Id</th>
        <th>Brand</th>
        <th>Type of Car</th>
        <th>Color</th>
        <th>Photo</th>
        <th>Manufactured Day</th>
        <th>Mileage</th>
        <th>Warranty</th>
        <th>Options</th>
        <th>Description</th>
        <th>Price</th>
        <th>Sold</th>
        <th>Registration Day</th>
        <c:forEach items="${list}" var="u">
            <tr align="center">
                <td>${u.getCarid()}</td>
                <td>${u.getBrand()}</td>
                <td>${u.getCarType()}</td>
                <td>${u.getColor()}</td>
                <td >
                    <c:if test="${u.getPhoto() ne ''}"><br/>
                        <img src="${pageContext.request.contextPath}/upload/${u.getPhoto()}"
                             style="width:100px; height:100px;"
                        >
                    </c:if>
                </td>
                <td>${u.getManufacturedDay()}</td>
                <td>${u.getMileage()}</td>
                <td>${u.getWarranty()}</td>
                <td>${u.getOptions()}</td>
                <td>${u.getDescription()}</td>
                <td>${u.getPrice()}</td>
                <td>${u.getSold()}</td>
                <td>${u.getRegDate()}</td>
                <td><a href="editform/${u.getCarid()}">Edit</a></td>
                <td><a href="javascript:delete_ok('${u.getCarid()}')">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</table>


<br/><a href="add">Add New Post</a>

</body>
</html>
