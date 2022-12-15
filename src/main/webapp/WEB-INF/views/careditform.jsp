<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: mink
  Date: 2022-11-30
  Time: 오후 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<html>
<head>
  <title>Title</title>
</head>
<body>

<form:form modelAttribute="u" method="POST" action="../editok">
  <form:hidden path="carid"/>
  <input type="hidden" name="carid" />
  <table id ="edit">
    <tr><td>브랜드</td><td>
      <select id = "brandSelection" name = "brand" value =${u.getBrand()} >
        <option value="Hyundai">Hyundai</option>
        <option value="Kia">Kia</option>
        <option value="Genesis">Genesis</option>
        <option value="SSangYong">SSangYong</option>
        <option value="Renault Korea">Renault Korea</option>
        <option value="GM Korea">GM Korea</option>
        <option value="Other">Other</option>
      </select></td></tr>
    <tr><td>차종</td><td><input type="radio" id = "sedan" name = "carType" value =${u.getCarType()}/>
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
        <input type="text" id="carName" name="carName" value=${u.getCarName()}>
      </td>
    </tr>
    <tr>
      <td>차 색상</td>
      <td><input type="color" id="col" name = "col" value =${u.getColor()}>
        <label for="col">색상을 고르시오.</label>

      </td>
    </tr>
    <tr>
      <td>
        차량사진
      </td>
      <td>
        <input type='file' name='photo' value =${u.getPhoto()}>
      </td>
    </tr>
    <tr>
      <td>
        생산일
      </td>
      <td>
        <label for="manufacturedDay">제조일</label>
        <input type="date" id="manufacturedDay" name="manufacturedDay" value =${u.getManufacturedDay()} min="2000-01-01" max ="2022-12-15">
      </td>
    </tr>
    <tr>
      <td>주행거리</td>
      <td>
        <input type="text" id="point" name="point" value =${u.getMileage()}>
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
        <input type="checkbox" id="led" name="option[]" value="01" class="checkSelect">
        <label for="led">LED 헤드램프</label><br>
        <input type="checkbox" id="HID" name="option[]" value="02" class="checkSelect">
        <label for="HID">HID 헤드램프</label><br>
        <input type="checkbox" id="HUD" name="option[]" value="03" class="checkSelect">
        <label for="HUD">HUD(Head Up Display)</label><br>
        <input type="checkbox" id="열선시트" name="option[]" value="04" class="checkSelect">
        <label for="열선시트">열선시트</label><br>
        <input type="checkbox" id="통풍시트" name="option[]" value="05" class="checkSelect">
        <label for="통풍시트">통풍시트</label><br>
        <input type="checkbox" id="navigation" name="option[]" value="06" class="checkSelect">
        <label for="navigation">내비게이션</label><br>
      </td>
    </tr>
    <tr>
      <td>
        기타 차량에 대한 설명
      </td>
      <td>
        <textarea id=description name=description style="width:90%;" rows="30">${u.getDescription()}</textarea><br>
      </td>
    </tr>
    <tr>
      <td>
        판매 희망 가격을 입력하여주세요.
      </td>
      <td>
        <label for="price">가격:  </label>
        <input type="number" id="price" name="price" value= ${u.getPrice()}>
        <label for="price">원  </label>
      </td>
    </tr>
    <tr>
      <td>
        판매 여부
      </td>
      <td>
        <input type="radio" id="soldout" name="sold" value="soldout_yes">
        <label for="soldout">예</label><br>
        <input type="radio" id="soldout_n" name="sold" value="soldout_no">
        <label for="soldout_n">아니오</label><br>
      </td>
    </tr>





  </table>
  <input type = "submit" value = "수정하기"/>
  <input type="button" value="취소하기" onclick="history.back()"/>


</form:form>

</body>
</html>
