<%-- 
    Document   : home
    Created on : Jun 20, 2023, 7:31:09 AM
    Author     : khong phai Minh Tuan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
        <script src="https://cdn.tailwindcss.com"></script>
        <style>



            .t:hover{
                opacity: 0.5;

            }
            .movie-content{
                border: 1px solid gray ;
                padding-bottom: 20px;
                border-radius: 4px;
            }
            .movie-content img{
                width: 240px;
                height: 335px;
            }

            .background-img1{
                background-image: url(https://www.cgv.vn/skin/frontend/cgv/default/images/bg_c_bricks.png) ;    
                background-size: 12%; 

            }



            .slideshow-container {
                width: 979px;
                height: 447px;
                position: relative;
                margin: 0 auto;
                overflow: hidden;


            }

            .slide {
                width: 100%;
                height: 100%;
                position: absolute;
                top: 0;
                opacity: 0;
                animation: slideAnimation 9s infinite;

            }

            .slide:nth-child(1) {
                animation-delay: 0s;
            }

            .slide:nth-child(2) {
                animation-delay: 3s;
            }

            .slide:nth-child(3) {
                animation-delay: 6s;
            }
            .slide:nth-child(4) {
                animation-delay: 9s;
            }
            .slide:nth-child(5) {
                animation-delay: 12s;
            }
            .slide:nth-child(6) {
                animation-delay: 15s;
            }

            .slide img {
                width: 100%;
                height: 100%;
                object-fit: cover;

            }

            @keyframes slideAnimation {
                0% {
                    opacity: 0;
                }
                10% {
                    opacity: 1;
                }
                33.33% {
                    opacity: 1;
                }
                43.33% {
                    opacity: 0;
                }
                100% {
                    opacity: 0;
                }
            } 





        </style>
    </head>
    <body style="background-color: #FFEBEB;">

        <jsp:include page="header.jsp"></jsp:include>
            <!--Big banner-->    
            <div class="background-img1">
                <div class="slideshow-container">
                <c:forEach items="${listM}" var="m">

                    <div class="slide">
                        <img src="${m.imgbanner}" alt="Slide 1">
                    </div>
                </c:forEach>

            </div>
        </div> 




        <div class="flex justify-center mt-5 ">
            <img  src="./img/h3_movie_selection.gif" alt="">  
        </div>

        <!--Movie-->
        <div class="">
            <div class="flex  mt-10 justify-evenly">
                <c:forEach begin="0" end="2" items="${listM}" var="o">
                    <div class="movie-content ">
                        <a href="moviedetail?mid=${o.movieid}"><img class="w-56" src="${o.imgmovie}"alt=""></a>
                        <p class=" text-center  font-bold">${o.namemovie}</p>
                        <div class="flex justify-around">
                            <a href="moviedetail?mid=${o.movieid}"> <button class="t"style=" border: 2px solid #EBB02D; color: #EBB02D; border-radius: 4px; margin-top: 20px; padding: 3px; ; ">
                                    Chi Tiết</button></a>

                            <c:if test="${sessionScope.acc ==null}">
                                <a href="showtime?sid=${o.movieid}"><button class="t"
                                                            style="border: 2px solid rgb(255, 0, 0); color: red; border-radius: 4px; margin-top: 20px; padding: 3px; padding-right: 10px; padding-left: 10px; ">
                                        Đặt Vé</button></a>
                                    </c:if>
                            <c:if test="${sessionScope.acc !=null}">
                                <a href="showtime?sid=${o.movieid}"><button class="t"
                                                              style="border: 2px solid rgb(255, 0, 0); color: red; border-radius: 4px; margin-top: 20px; padding: 3px; padding-right: 10px; padding-left: 10px; ">
                                        Đặt Vé</button></a>
                                    </c:if>

                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>
        <!--movie row 2-->
        <div class="">
            <div class="flex  mt-10 justify-evenly">
                <c:forEach begin="3" end="5" items="${listM}" var="o">
                    <div class="movie-content ">
                        <a href="moviedetail?mid=${o.movieid}"><img class="w-56" src="${o.imgmovie}"alt=""></a>
                        <p class=" text-center  font-bold">${o.namemovie}</p>
                        <div class="flex justify-around">
                            <a href="moviedetail?mid=${o.movieid}"> <button class="t"
                                                                            style=" border: 2px solid #EBB02D; color: #EBB02D; border-radius: 4px; margin-top: 20px; padding: 3px; ; ">
                                    Chi Tiết</button></a>

                            <c:if test="${sessionScope.acc ==null}">
                                <a href="login.jsp"><button class="t"
                                                            style="border: 2px solid rgb(255, 0, 0); color: red; border-radius: 4px; margin-top: 20px; padding: 3px; padding-right: 10px; padding-left: 10px; ">
                                        Đặt Vé</button></a>
                                    </c:if>
                                    <c:if test="${sessionScope.acc !=null}">
                                <a href="booking.jsp"><button class="t"
                                                              style="border: 2px solid rgb(255, 0, 0); color: red; border-radius: 4px; margin-top: 20px; padding: 3px; padding-right: 10px; padding-left: 10px; ">
                                        Đặt Vé</button></a>
                                    </c:if>

                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>
        <!--back infomation-->

        <jsp:include page="footer.jsp"></jsp:include>













    </body>
</html>
