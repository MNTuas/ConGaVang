<%-- 
    Document   : userdetail
    Created on : Jun 25, 2023, 12:13:21 PM
    Author     : khong phai Minh Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <style>

.sidebarleft-content li a{
    text-decoration: none;
    color: white;
    font-family: verdana;
    font-size: 12px;
    font-weight:700;
    margin :0px 0px 0px 5px;
    text-transform: uppercase;
    text-align: center;
}

.sidebarleft-content li:nth-child(1){
    background-color:red;
    display : list-item;
    margin: 20px ;
    padding : 0px 18px 0px 18px;
    border-radius:5px;
    text-align: left;
}

.sidebarleft-content li{
    background-color:gray;
    display : list-item;
    margin: 20px ;
    padding : 0px 18px 0px 18px;
    border-radius:5px;
    text-align: center;
    
}
.sidebarleft-content{
    margin-top:60px;
}


.sidebarright-content{
    list-style:none;
   
}

.sidebarright-content li{
    color:#7f7f7f;
    font-size: 15px;
    line-height:18px;
    margin: 20px;
}
.sidebarright-content   a:hover{
    opacity:0.5;
}
        </style>
        <div style=" margin: 20px 20px 100px 20px">
   <div class="sidebarleft" style="display: flex ">
    <div style="margin-right: 50px;">
        <span style=" margin-left: 30px;  color: red; font-size: 22px; font-weight: 600; text-transform: uppercase;line-height: 30.8px; ;">TÀI KHOẢN CGV</span>
    <ul class="sidebarleft-content" style="list-style: none;">        
        <li><a href="./userdetail.jsp">Thông Tin Chung</a></li>
        <li><a href="./userdetailedit.jsp">Chi Tiết Tài Khoản</a></li>
        <li><a href="./ticket.jsp">Lịch sửa giao dịch</a></li>        
    </ul>
</div>
    <div>       
        <div class="sidebarright"> 
            <h1 style=" border-radius: 9px; color: white; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 22px; line-height: 34px; margin: 0px 0px 15px; padding:  0px 0px 0px; text-align: center; text-transform: uppercase; background-color: rgb(32, 31, 31); display: block; width: 725px; height: 37px;">Thông Tin Chung</h1>           
            <ul class="sidebarright-content" style="list-style: none;">               
                <strong style="font-size: 13px; font-weight: 700; line-height: 18px;">Xin Chào ${sessionScope.acc.username} <!--name--></strong>
                <h2 style="font-size: 20px; font-weight: 700; line-height: 18px; padding: 0px 0px 10px; border-bottom: 2px solid gray ">Thông Tin Tài Khoản</h2>
               
                <li>Tên : ${sessionScope.acc.username}</li>
                <li>Email :${sessionScope.acc.email}</li>
                <li>Điện Thoại : ${sessionScope.acc.phone}</li>
                <button style="border: 1px solid gray; color: black; margin-left: 20px; background-color: gray "><a style="color: black; text-decoration: none; padding: 0px 10px" href="./userdetailedit.jsp">Thay Đổi</a></button>
            </ul>
        </div>
    </div>
   </div> 
            </div>
   <jsp:include page="footer.jsp"></jsp:include>
    </body>
   
</html>
