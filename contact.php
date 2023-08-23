<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
    header('location:login.php');
};

if (isset($_POST['send'])) {
    $name = $_POST['name'];
    $name = filter_var($name, FILTER_SANITIZE_STRING);
    $email = $_POST['email'];
    $email = filter_var($email, FILTER_SANITIZE_EMAIL);
    $number = $_POST['number'];
    $number = filter_var($number, FILTER_SANITIZE_STRING);
    $msg = $_POST['msg'];
    $msg = filter_var($msg, FILTER_SANITIZE_STRING);

    $select_message = $conn->prepare("SELECT * FROM `message` WHERE name = ? AND email = ? AND number = ? AND message = ?");
    $select_message->execute([$name, $email, $number, $msg]);

    if ($select_message->rowCount() > 0) {
        $message[] = 'Already sent message!';
    } else {
        $insert_message = $conn->prepare("INSERT INTO `message` (user_id, name, email, number, message) VALUES (?, ?, ?, ?, ?)");
        $insert_message->execute([$user_id, $name, $email, $number, $msg]);
        $message[] = 'Sent message successfully!';
    }
};

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

    <title>contact</title>
</head>
<body>
    <?php include 'header.php';?>

    <section class="contact">

        <h1 class="title">contact us</h1>

        <form action="" method="POST">
            <input type="text" name="name" class="box" required placeholder="enter your name">
            <input type="email" name="email" class="box" required placeholder="enter your email">
            <input type="number" min="0" name="number" class="box" required placeholder="enter your number">
            <textarea name="msg" class="box" required placeholder="enter your message" cols="30" rows="10"></textarea>
            <input type="submit" value="send message" class="btn" name="send">
        </form>
    </section>











    <?php include 'footer.php'?>
    <script src="js/script.js"></script>
</body>
</html>