<%-- 
    Document   : home
    Created on : Jun 20, 2023, 7:31:09 AM
    Author     : khong phai Minh Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">

        <style>



            .t:hover{
                opacity: 0.5;

            }
            .movie-content{
                border: 1px solid gray ;
                padding-bottom: 20px;
                border-radius: 4px;
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
                <style>
                    .login{
                        display: flex;
                        justify-content: center;
                        align-items: center;

                        background-color: #FFEBEB;
                    }

                    .login-container {
                        background-color: #fff;
                        border-radius: 5px;
                        padding: 20px;
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    }

                    .login-container h2 {
                        margin-top: 20px;
                        background-color: #e71a0f;
                        font-family: Verdana, Geneva, Tahoma, sans-serif;
                        font-size: 15px;
                        font-weight: 600;
                        padding: 10px;
                        text-align: left;
                        color: white;
                        display: flex;
                        align-items: center;
                    }

                    .login-container a {
                        text-decoration: none;
                        color: white;
                        margin-left: 20px;
                    }

                    .form-group {
                        margin-top: 20px;
                    }

                    .form-group label {
                        font-family: Verdana, Geneva, Tahoma, sans-serif;
                        font-size: 13px;
                        font-weight: 600;
                        line-height: 18px;
                    }

                    .form-group input {
                        border: 1px solid;
                        width: 480px;
                        height: 30px;
                        background-color: #e8f0fe;
                        border-radius: 2px;
                        font-family: Verdana, Geneva, Tahoma, sans-serif;
                        font-size: 10px;
                        margin: 8px 0px;
                    }

                    .form-group .forgot {
                        display: block;
                        margin-top: 8px;
                        text-align: center;
                        font-size: 12px;
                        color: black;
                    }
                    .form-group .forgot:hover{
                        color: blue;
                    }
                    .form-group .login-back:hover{
                        opacity: 0.5;
                    }

                    .form-group input[type="submit"] {
                        border: 0;
                        align-items: flex-start;
                        background-color: #e71a0f;
                        border-radius: 4px;
                        color: #e8f0fe;
                        display: block;
                        font-family: Verdana, Geneva, Tahoma, sans-serif;
                        font-size: 14px;
                        line-height: 18px;
                        padding: 5px 15px;
                        text-align: center;
                        text-transform: uppercase;
                        cursor: pointer;
                    }
                </style>

                <div class="login">
                    <div class="login-container">
                        <h2>
                            <a href=""><span style="border-bottom: 2px solid white;">Login</span></a>
                            <a href="signup.jsp">Sign in</a>
                        </h2>
                        <form action="login" method="post">
                            <div class="form-group">
                                <label for="email">Email/Phone</label><br>
                                <input type="text" id="email" placeholder=" Email/Phone" name="user">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label><br>
                                <input type="password" id="password" placeholder=" Password" name="password">
                            </div>
                            <div class="form-group">
                                    <p class="text-danger">${mess}</p>
                                
                                <input class="login-back"  type="submit" value="Login">
                                <a class="forgot" href="#"><small>Forgot your Password?</small></a>    
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--back infomation-->
        <jsp:include page="footer.jsp"></jsp:include>












    </body>
</html>
