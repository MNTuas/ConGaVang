<%-- 
    Document   : seat
    Created on : Jun 21, 2023, 5:13:17 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chọn Chỗ Ngồi</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <style>  

            .container{
                text-align: center;                
            }
            .title{
                color: white;
                background-color: black;
                font-family: Verdana;
                
                line-height:32px;
                text-align:center;
                text-transform:uppercase;
            }
            .screen-container {
               
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }

            .screen {
                background-image: url("https://www.cgv.vn/skin/frontend/cgv/default/images/bg-cgv/bg-screen.png");
                background-position: 50% 0%;
                background-size:  100%;
                font-size:14px;
                line-height: 18px;
                margin: 20px 0px 40px;
                width:976px;
                height:45px
            }

            input.largerCheckbox {
                width: 80px;
                height: 80px;
                cursor: pointer;
            }
            .custom-button3 {
                margin-left: 20px;
                margin-top: 20px;
                margin-right: 30px;
                text-align: center;
                
            }

            .change-button {
                width: 90px;
                height: 90px;
                background-color: #e71a0f;
                color: white;
                font-size: 15px;
                font-family: Verdana;
                border-radius: 15px;
            }

            .information-movie-buy {
                display: flex;
              
                
            }
            .information-movie1 {
                display: flex;
                margin-left: 20px;
            }

            .information-movie2 {
                display: flex;
                margin-left: 500px;
            }

            .custom-button4 {
                margin:10px
              
            }

            .selection-change {
                margin-top: 20px;
                background-color: gray;
                border-radius: 5px;
                

            }
            

        </style>
    </head>
    <body>
<jsp:include page="header.jsp"></jsp:include>
<div>
<!--head-->
<div style="border: 2px solid black ; width: 980px; height: 635px; margin-left: 150px;">
    <div class="container">
        <div class="title">
            <h1 style="font-size:18px;">Booking Online</h1>
        </div>
    </div>
    <div class="screen-container">
        
        <div class="screen"></div>            
            
    <div class="container">
        <table style="width:100%">
                    <tr>
                        <th></th>
                        <th>1</th>
                        <th>2</th>
                        <th>3</th>
                        <th>4</th>
                        <th>5</th>

                    </tr>

                    <tr>
                        <th>A</th>

                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}" checked disabled></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}" checked disabled></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                    </tr>

                    <tr>
                        <th>B</th>

                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}" checked disabled></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                    </tr>
                    <tr>
                        <th>C</th>

                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}" checked disabled></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}" checked disabled></th>

                    </tr>
                    <tr>
                        <th>D</th>

                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}" checked disabled></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                        <th><input type="checkbox" class="largerCheckbox" name="seats" value="${seat.id}"></th>
                    </tr>

    </table>    
</div>        
<div class="selection-change">
    <div class="information-movie-buy" >
        <div class="information-movie1">          
            <div class="prices" style="margin-top: 20px;">
                <ul style="list-style:none; color: white">
                    <li>Tên Phim : </li>
                    <li>Rạp :</li>
                    <li>Suất :</li>
                </ul>
            </div></div>

        <div class="information-movie2">             
            <div class="custom-button4">
                <a href="food.jsp"><button class="change-button">NEXT</button></a>
            </div>
        </div>
    </div>                

</div>



        </div>
                    </div> 
    <jsp:include page="footer.jsp"></jsp:include>
    </body>

</html>

