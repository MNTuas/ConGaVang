<%-- 
    Document   : food
    Created on : Jun 21, 2023, 5:13:42 PM
    Author     : ADMIN
--%>

<%-- 
    Document   : bookdemo
    Created on : Jun 18, 2023, 1:32:57 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mua vé</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


</head>
<style>
    .header-title {
        background-color: #231d1c;
        color: #ffffff;
        font-size: 30px;
        text-align: center;
        font-weight: bold;
        font-family: Verdana;
    }

    .title {
       background-color: #bcbdc0;
       border : 2px 0px solid #d4d3c9;
       display:inline-block;
       font-family: Verdana, Geneva, Tahoma, sans-serif;
       font-weight:600;
       line-height: 32px;
       text-align: center;
       width:100%;
       height:36px;
    }

    #countdown {
        font-size: 30px;
        text-align: right;
    }

    .img-buy-item img {
        margin-top: 20px;
        width: 153px;
        height: 153px;
    }

    .img-buy-item {
        width: 60%;
    }

    .item {
        display: flex;
        width:459px;
        height:204px;
    }

    .header {
        height: 100%;
        background-color: #fdfcf0;

    }

    .background {
        border: 2px solid black;
        width: 1200px;
        margin: auto;
    }

    .table-background {
        display: flex;
        justify-content: space-around;
    }



    .price {
        font-weight: bold;
       
    }

    .decrease-button {
        background-color: red;
        width: 22px;
        height: 30px;
    }

    .increase-button {
        background-color: red;
        width: 22px;
        height: 30px;
    }

    .counter-button {
        width: 22px;
        height: 30px;
    }

    .information-movie1 {
        display: flex;
        margin-left: 20px;
    }

    .icon {
        font-size: 45px;
    }

    .custom-button3 {
        margin-left: 20px;
        margin-top: 20px;
        margin-right: 30px;
    }

    .change-button {
        width: 95px;
        height: 90px;
        background-color: #e71a0f;
        color: white;
        font-size: 18px;
        font-family: Verdana;
        border-radius: 15px;
        margin-top:5px
       
    }

    .information-movie-buy {
        display: flex;
        justify-content: space-around;
    }




    .selection-change {
        margin-top: 20px;
        background-color: grey;
    }
</style>
<body>
    <jsp:include page="header.jsp"></jsp:include>

<div class="background">
<div style=" background-color: black; text-align: center; color: white; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 18px; font-weight: 600; text-transform: uppercase;">
    Booking online
</div>

<div id="countdown"></div>
<label class="title" style="" for="">Bắp Nước</label>

<!--food row 1-->
<div>
    <div style="margin-top:20px" class="table-background">
    <div class="item">
        <div style="width:200px; height:135px ;" class="img-buy-item">
            <img src="https://www.cgv.vn/media/concession/web/6465deb2716d7_1684397746.png"alt="JUNGLE BROWN">
        </div>

        <div style="display: list-item; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 14px; line-height: 18px; margin-left: 50px;">
            <h3 style="color: black ; font-size: 14px; font-weight: 700; line-height: 18px; text-align: left;" >JUNGLE BROWN</h3>
            <div style="font-size: 14px; line-height: 18px; margin: 7px 0px 0px; text-align: left;">1 bình Jungle Brown + 1 nước siêu lớn 
                **Mua thêm 1 bắp ngọt chỉ với 29K tại rạp<br>
                **Nhận trong ngày xem phim**<br>
                ***Mẫu ly phụ thuộc vào số lượng hàng tại rạp</div>
            <div style="margin-top: 10px;">
                <span>Giá:</span>
                <span  class="price">259,000,00đ</span>
            </div>

            <div class="product">
                <div class="custom-change">
                    <button class="decrease-button">-</button>
                    <button class="counter-button">0</button>
                    <button class="increase-button">+</button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="table-background">
        <div class="item">
            <div style="width:200px; height:135px ;" class="img-buy-item">
                <img src="https://www.cgv.vn/media/concession/web/6426a4fc4b1ca_1680254204.png"alt="JUNGLE BROWN">
            </div>
    
            <div style="display: list-item; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 14px; line-height: 18px; margin-left: 50px;">
                <h3 style="  color: black ; font-size: 14px; font-weight: 700; line-height: 18px; text-align: left;" >JUNGLE BROWN COUPLE</h3>
                <div style="font-size: 14px; line-height: 18px; margin: 7px 0px 0px; text-align: left;">
                    2 bình Jungle Brown + 2 nước siêu lớn + 1 bắp ngọt lớn<br><br>
                    **Nhận trong ngày xem phim**<br>
                    ***Mẫu ly phụ thuộc vào số lượng hàng tại rạp</div>
                <div style="margin-top: 10px;">
                    <span>Giá:</span>
                    <span  class="price">259,000,00đ</span>
                </div>
    
                <div class="product">
                    <div class="custom-change">
                        <button class="decrease-button">-</button>
                        <button class="counter-button">0</button>
                        <button class="increase-button">+</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>

<!--food row 2-->
<div style="margin: 40px 0px 40px;">
    <div class="table-background">
    <div class="item">
        <div style="width:200px; height:135px ;" class="img-buy-item">
            <img src="https://www.cgv.vn/media/concession/web/6465df9cdef9a_1684397981.png"alt="JUNGLE BROWN">
        </div>

        <div style="display: list-item; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 14px; line-height: 18px; margin-left: 50px;">
            <h3 style="  color: black ; font-size: 14px; font-weight: 700; line-height: 18px; text-align: left;" >MY COMBO</h3>
            <div style="font-size: 14px; line-height: 18px; margin: 7px 0px 0px; text-align: left;">1 bắp lớn + 1 nước siêu lớn. Nhận trong ngày xem phim*<br> 
                **Mua thêm 1 bắp ngọt chỉ với 29K tại rạp<br>
                **Nhận trong ngày xem phim**<br>
                ***Mẫu ly phụ thuộc vào số lượng hàng tại rạp</div>
            <div style="margin-top: 10px;">
                <span>Giá:</span>
                <span  class="price">259,000,00đ</span>
            </div>

            <div class="product">
                <div class="custom-change">
                    <button class="decrease-button">-</button>
                    <button class="counter-button">0</button>
                    <button class="increase-button">+</button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="table-background">
        <div class="item">
            <div style="width:200px; height:135px ;" class="img-buy-item">
                <img src="https://www.cgv.vn/media/concession/web/649564596228a_1687512153.png"alt="JUNGLE BROWN">
            </div>
    
            <div style="display: list-item; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 14px; line-height: 18px; margin-left: 50px;">
                <h3 style="  color: black ; font-size: 14px; font-weight: 700; line-height: 18px; text-align: left;" >BABY SHARK FAMILY</h3>
                <div style="font-size: 14px; line-height: 18px; margin: 7px 0px 0px; text-align: left;">2 ly Baby Shark + 2 nước siêu lớn<br> 
                    **Mua thêm 1 bắp ngọt chỉ với 29K tại rạp<br>
                    **Nhận trong ngày xem phim**<br>
                    ***Mẫu ly phụ thuộc vào số lượng hàng tại rạp</div>
                <div style="margin-top: 10px;">
                    <span>Giá:</span>
                    <span  class="price">259,000,00đ</span>
                </div>
    
                <div class="product">
                    <div class="custom-change">
                        <button class="decrease-button">-</button>
                        <button class="counter-button">0</button>
                        <button class="increase-button">+</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>


      
        <div class="selection-change">
            <div class="information-movie-buy">
                <div class="information-movie1">
                    
                    <ul style="list-style:none; margin-top: 10px;">
                        <li style="" >Tên Phim : </li>
                        <li style="margin-top: 3px;" >Rạp :</li>
                        <li style="margin-top: 3px;" >Suất :</li>
                    </ul>

                </div>
                <div class="information-movie2">
                </div>
              
                <div class="custom-button4">
                    <a href="#">
                        <button class="change-button">NEXT</button>
                    </a>


                </div>

            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>



</body>
<script>


    const productContainers = document.querySelectorAll('.product');

    productContainers.forEach(container => {
        const decreaseButton = container.querySelector('.decrease-button');
        const counterButton = container.querySelector('.counter-button');
        const increaseButton = container.querySelector('.increase-button');

        const filmPrice = container.querySelector('.film-price');
        const comboPrice = container.querySelector('.combo-price');
        const totalPrice = container.querySelector('.total-price');
        const priceElement = container.querySelector('.price');
        let filmPriceValue = 0;
        let comboPriceValue = 0;
        let counterValue = 0;

        decreaseButton.addEventListener('click', () => {
            if (counterValue > 0) {
                counterValue--;
                counterButton.textContent = counterValue;
                updatePrices();
            }
        });

        increaseButton.addEventListener('click', () => {
            counterValue++;
            counterButton.textContent = counterValue;
            updatePrices();
        });


    });





</script>


</html>
