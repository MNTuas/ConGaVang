<%-- 
    Document   : booking
    Created on : Jun 25, 2023, 9:15:58 PM
    Author     : khong phai Minh Tuan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        select {  width: 90%;  padding: 50px 20px;  border: 1px solid black;  border-radius: 4px;  ;}
        .buttonhover:hover{
            opacity: 0.5;
        }
        form{
            margin: 20px;
        }
    </style>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div style="border: 2px solid gray; margin: 30px 50px "> 
                <h1 style="text-align: center; text-transform: uppercase; font-weight: bold; font-size: 20px">Chọn Địa Điểm / Lịch xem phim</h1>
               </div>
                <div>
                <c:forEach begin="0" end="6" items="${listT}" var="t">
                    <ul>
                        <li>${t.namemovie}</li>
                        <li>${t.Cinema_name}</li>
                        <li>${t.Start_time}</li>                      
                    </ul>
                    </c:forEach>
                    <button type="submit" style="border: 1px solid black; font-size: 20px" > Chọn</button>
                </div>
     
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
