<%-- 
    Document   : moviedetail
    Created on : Jun 24, 2023, 3:14:28 PM
    Author     : khong phai Minh Tuan
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Pe</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <style>
            .detail-input{
   display: inline-block;
   margin-left: 20px;
   margin-top: 10px;
   font-weight:400;
   font-family : verdana;
}
.detail-content{
    margin-bottom:20px;
}
label{
 font-weight:600;
 font-family : verdana;
 font-size: 15px;
 line-height:  18px;
}
 .t:hover{
                opacity: 0.5;

            }
        </style>
        <div>
        <div class="movie-detail" style="margin: 0px 100px 50px 100px ;" >
        <span style="border-bottom: 2px solid black ; display: block; font-size: 28px; font-family: Verdana, Geneva, Tahoma, sans-serif; ">Nội Dung Phim</span>
        </div>
        
        <div style="display: flex;  justify-content: space-evenly;">
            
            <img style="width: 300px; height: 380px; " src="${moviedetail.imgmovie}" alt="">
            
        
        <div >
        <p style="font-size: 24px; margin: 0px 0px 5px; padding: 0px 0px 3px; line-height: 28.8px; border-bottom: 1px solid rgb(151, 150, 150, 0.5);">${moviedetail.namemovie}</p>
        
        <div class="detail-content">
            <label>Đạo diễn  :</label>
            <div class="detail-input">${moviedetail.director}</div>
         </div> 
         <div class="detail-content">
            <label for="">Diễn viên :</label>
            <div class="detail-input">${moviedetail.actor}</div>
         </div>
         <div class="detail-content">
            <label  for="">Thể Loại  :</label>
            <div class="detail-input">${moviedetail.genre}</div>
         </div>
         <div class="detail-content">
            <label for="">Khởi chiếu:</label>
            <div class="detail-input">${moviedetail.releasedate}</div>
         </div>
         <div class="detail-content">
            <label for="">Thời lượng :</label>
            <div class="detail-input">${moviedetail.duration}</div>
         </div>
        </div>    
        </div>
        <a href="booking.jsp"><button class="t" style=" border: 1px solid red ; border-radius: 4px;  margin-left: 550px; margin-top: 20px; background-color: white; color: red; width: 100px; font-size: 18px; font-family: Verdana, Geneva, Tahoma, sans-serif;">Đặt vé</button>
        </a>
    </div>
   
    <!--TrailerGioithieu-->
    
    <div style="display: flex; margin: 20px 100px; ">
        <div>
            <p style=" display: block; font-size: 28px; font-family: Verdana, Geneva, Tahoma, sans-serif;">Trailer:</p>
            <body><iframe width="450" height="250" src="${moviedetail.trailer}">
            </iframe>
        </div>
        <div style="margin-left: 20px;">
            <p style=" display: block; font-size: 28px; font-family: Verdana, Geneva, Tahoma, sans-serif;">Giới Thiệu:</p>
            <p style="font-family : verdana; font-size: 15px; font-style: italic;">${moviedetail.intro} </p>
        </div>
    </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
