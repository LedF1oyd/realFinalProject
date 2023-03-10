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
<form action="./addok" method="post">
<table id = edit>
    <tr><td>브랜드</td><td>
        <select id = "brandSelection" name = "brand">
            <option value="Hyundai">Hyundai</option>
            <option value="Kia">Kia</option>
            <option value="Genesis">Genesis</option>
            <option value="SSangYong">SSangYong</option>
            <option value="Renault Korea">Renault Korea</option>
            <option value="GM Korea">GM Korea</option>
            <option value="Other">Other</option>
    </select></td></tr>
<tr><td>차종</td><td><input type="radio" id = "sedan" name = "carType" value ="Sedan"/>
    <label for="sedan">세단</label>
    <input type="radio" id="suv" name="carType" value="SUV">
    <label for="suv">SUV</label><br>
    <input type="radio" id="hatchBack" name="carType" value="Hatch-Back">
    <label for="hatchBack">해치백</label><br>
    <input type="radio" id="wagon" name="carType" value="Wagon">
    <label for="hatchBack">웨건</label><br>
    <input type="radio" id="coupe" name="carType" value="Coupe">
    <label for="hatchBack">쿠페</label><br>
</td></tr>
<tr>
    <td>차이름</td>
    <td>
        <input type="text" id="carName" name="carName">
    </td>
</tr>
<tr>
    <td>차 색상</td>
    <td><input type="color" id="color" name = "color" value = "#e666465">
        <label for="color">색상을 고르시오.</label>

    </td>
</tr>
    <tr>
        <td>
            차량사진
        </td>
        <td>
            <input type='file' name='photo'>
        </td>
    </tr>
    <tr>
        <td>
            생산일
        </td>
        <td>
            <label for="manufacturedDay">제조일</label>
            <input type="date" id="manufacturedDay" name="manufacturedDay" value="2018-07-22" min="2000-01-01" max ="2022-12-15">
        </td>
    </tr>
    <tr>
        <td>주행거리</td>
        <td>
            <input type="text" id="mileage" name="mileage">
        </td>
    </tr>
    <tr>
        <td>
            제조사보증
        </td>
        <td>
            <input type="radio" id="warranty_yes" name="warranty" value="warranty_valid">
            <label for="warranty_yes">예</label><br>
            <input type="radio" id="warranty_n" name="warranty" value="warranty_expired">
            <label for="warranty_n">아니오</label><br>
        </td>
    </tr>
    <tr>
        <td>
            차량의 옵션
        </td>
        <td>
            <input type="checkbox" id="led" name="options[]" value="LED headlamp" class="checkSelect">
            <label for="led">LED 헤드램프</label><br>
            <input type="checkbox" id="HID" name="options[]" value="HID headlamp" class="checkSelect">
            <label for="HID">HID 헤드램프</label><br>
            <input type="checkbox" id="HUD" name="options[]" value="HUD(Head Up Display)" class="checkSelect">
            <label for="HUD">HUD(Head Up Display)</label><br>
            <input type="checkbox" id="열선시트" name="options[]" value="heated seat" class="checkSelect">
            <label for="열선시트">열선시트</label><br>
            <input type="checkbox" id="통풍시트" name="options[]" value="ventilation seat" class="checkSelect">
            <label for="통풍시트">통풍시트</label><br>
            <input type="checkbox" id="navigation" name="options[]" value="navigation" class="checkSelect">
            <label for="navigation">내비게이션</label><br>
        </td>
    </tr>
    <tr>
        <td>
            기타 차량에 대한 설명
        </td>
        <td>
            <textarea id=description name=description style="width:90%;" rows="30"></textarea><br>
        </td>
    </tr>
    <tr>
        <td>
            판매 희망 가격을 입력하여주세요.
        </td>
        <td>
            <label for="price">가격:  </label>
            <input type="number" id="price" name="price">
            <label for="price">원  </label>
        </td>
    </tr>
    <tr>
        <td>
            판매 여부
        </td>
        <td>
            <input type="radio" id="soldout" name="sold" value="1">
            <label for="soldout">예</label><br>
            <input type="radio" id="soldout_n" name="sold" value="0">
            <label for="soldout_n">아니오</label><br>
        </td>
    </tr>



<tr><td><a href="list">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>