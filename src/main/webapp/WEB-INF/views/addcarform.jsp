<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id = edit>
    <tr><td>브랜드</td><td>
        <select id = "brandSelection" name = "brand">
            <option value="현대">현대</option>
            <option value="기아">기아</option>
            <option value="제네시스">제네시스</option>
            <option value="쌍용">쌍용</option>
            <option value="르노코리아자동차">르노코리아자동차</option>
            <option value="한국GM">한국GM</option>
            <option value="기타">기타</option>
    </select></td></tr>
<tr><td>차종</td><td><input type="text" name="title"/></td></tr>
<tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<tr><td><a href="list">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>