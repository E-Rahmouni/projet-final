<?php

include 'config.php';

session_start();

if (isset($_POST['submit'])){

     $email = $_POST['email'];
    $email = filter_var($email, FILTER_SANITIZE_STRING);
    $pass =  md5($_POST['pass']);
    $pass = filter_var($pass, FILTER_SANITIZE_STRING);
    $select = $conn->prepare("SELECT * FROM  `users` WHERE email = ? AND password = ?");
    $select->execute([$email, $pass]);
    $row = $select->fetch(PDO::FETCH_ASSOC);

    if($select->rowCount() > 0){

        if($row['user_type'] == 'admin'){

            $_SESSION['admin_id'] = $row['id'];
            header('location:admin_page.php');

        }elseif($row['user_type'] == 'user'){

            $_SESSION['user_id'] = $row['id'];
            header('location:home.php');
        }else{
            $message[] = 'no user fond!';
        }
    }else{
        $message[] = 'incorrect email or password!' ;
    } 
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
    <link rel="stylesheet" href="css/components.css">

    <title>Login</title>
</head>
<body>

<?php

if(isset($message)){
    foreach($message as $message){
        echo '
        <div class="message">
            <span>'.$message.'</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
        </div>
        ';
    }
}

?>

    <section class="form-container"> 

        <form action="" enctype="multipart/form-data" method="POST">
            <h3>Login now</h3>
             <input type="email" name="email" class="box" placeholder ="enter your email..." required>
            <input type="password" name="pass" class="box" placeholder ="enter your password..." required>
             <input type="submit" value="login now" class="btn" name="submit">
            <p>Don't have an account? <a href="register.php">Register Now</a></p>
        </form>

    </section>
</body>
</html>