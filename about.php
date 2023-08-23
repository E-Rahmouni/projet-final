<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
    header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

            <!-- font awesome cdn link -->
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

            <!-- custom css file link -->
            <link rel="stylesheet" href="css/style.css">

    <title>about</title>
</head>
<body>


    <?php include 'header.php';?>

    <section class="about">

        <div class="row">

            <div class="box">
                <img src="images/about-img-1.png" alt="">
                <h3>why choose us?</h3>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Omnis quisquam deserunt iusto aperiam veniam sed ipsum debitis ex expedita adipisci, recusandae nihil repellat quos voluptates perferendis excepturi a inventore vel.</p>
                <a href="contact.php" class="btn">contact us</a>
            </div>

            <div class="box">
                <img src="images/about-img-2.png" alt="">
                <h3>what we provide?</h3>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Omnis quisquam deserunt iusto aperiam veniam sed ipsum debitis ex expedita adipisci, recusandae nihil repellat quos voluptates perferendis excepturi a inventore vel.</p>
                <a href="shop.php" class="btn">shop</a>
            </div>

        </div>

    </section>

    <section class="reviews">

        <h1 class="title">clients reviews</h1>

        <div class="box-container">
            <div class="box">
                <img src="images/pic-1.jpg" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam consequuntur aut fuga sint architecto provident cum dolorum voluptatibus est itaque!</p>
                <div class="starts">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>bouaza nassir</h3>
            </div>

            <div class="box">
                <img src="images/pic-2.jpeg" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam consequuntur aut fuga sint architecto provident cum dolorum voluptatibus est itaque!</p>
                <div class="starts">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>mohamed nassir</h3>
            </div>

            <div class="box">
                <img src="images/pic-3.jpg" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam consequuntur aut fuga sint architecto provident cum dolorum voluptatibus est itaque!</p>
                <div class="starts">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h3>ahmed saadani</h3>
            </div>

            <div class="box">
                <img src="images/pic-4.jpg" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam consequuntur aut fuga sint architecto provident cum dolorum voluptatibus est itaque!</p>
                <div class="starts">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>salma saadani</h3>
            </div>

            <div class="box">
                <img src="images/pic-5.jpg" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam consequuntur aut fuga sint architecto provident cum dolorum voluptatibus est itaque!</p>
                <div class="starts">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>hanan nassir</h3>
            </div>

            <div class="box">
                <img src="images/pic-6.jpg" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam consequuntur aut fuga sint architecto provident cum dolorum voluptatibus est itaque!</p>
                <div class="starts">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>torya nassir</h3>
            </div>



        </div>




    </section>











    <?php include 'footer.php'?>
    <script src="js/script.js"></script>
</body>
</html>