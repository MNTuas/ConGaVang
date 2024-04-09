

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
        <jsp:include page="adheader.jsp"></jsp:include>
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

.sidebarleft-content li:nth-child(2){
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
input:hover{
    opacity: 0.5;
}
tr{
    margin: 20px;
}
input{
    padding-right: 30px; 
}
</style>
      
 <div class="sidebarright" style="margin-left: 250px"> 
            <h1 style=" border-radius: 9px; color: white; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 22px; line-height: 34px; margin: 0px 0px 15px ; padding:  0px 0px 0px; text-align: center; text-transform: uppercase; background-color: rgb(32, 31, 31); display: block; width: 725px; height: 37px;">Chỉnh Sửa Phim</h1>           
            <ul class="sidebarright-content" style="list-style: none;">               
                <strong style="font-size: 13px; font-weight: 700; line-height: 18px;">Xin Chào <!--name--></strong>
        </div> 
        
<form action="update" method="POST" style="margin-left: 240px">
    <table border="0">
       
        <tbody>
            <tr>
                <td></td>
                 <td> <input name="movieid"  value="${editmovie.movieid}" type="hidden" ></td>
            </tr>
            <tr>
                 <td>Tên Movie :</td>
                 <td> <input name="namemovie"  value="${editmovie.namemovie}" type="text" ></td>
                <!-- https://m.media-amazon.com/images/I/71WiYBT2QsL._AC_UF894,1000_QL80_.jpg-->
            </tr>
            <tr>
                 <td>Đạo diễn  :</td>
                 <td> <input name="director"  value="${editmovie.director}" type="text"></td>    
            </tr> 
            <tr>
                 <td>Diễn Viên  :</td>
                 <td> <input name="actor"  value="${editmovie.actor}" type="text"></td>    
            </tr> 
            <tr>
                 <td>Thể Loại  :</td>
                 <td> <input name="genre"  value="${editmovie.genre}" type="text"></td>    
            </tr> 
                 
            <tr>
                 <td>Ngày Chiếu  :</td>
                 <td> <input name="releasedate"  value="${editmovie.releasedate}" type="text"></td>    
            </tr> 
                 
            <tr>
                 <td>Thời Lượng  :</td>
                 <td> <input name="duration"  value="${editmovie.duration}" type="text"></td>    
            </tr> 
                 
            <tr>
                 <td>IMG Movie  :</td>
                 <td> <input name="imgmovie"  value="${editmovie.imgmovie}" type="text"></td>    
            </tr> 
                 
            <tr>
                 <td>IMG Banner  :</td>
                 <td> <input name="imgbanner"  value="${editmovie.imgbanner}" type="text"></td>    
            </tr> 
                 
            <tr>
                 <td>Trailer  :</td>
                 <td> <input name="trailer"  value="${editmovie.trailer}" type="text"></td>    
            </tr> 
                 
            <tr>
                 <td>Intro  :</td>
                 <td> <input name="intro"  value="${editmovie.intro}" type="text"></td>    
            </tr> 
                 
                 

                    <td><input type="submit" value="update" /></td>
                 </tr>
             </table>
                   
                             
        </tbody>
    </table>


</form>
       
       
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
