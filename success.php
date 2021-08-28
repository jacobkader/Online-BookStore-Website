<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "creditcard";



// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

function mask_credit_card($ccnum) {
    return  str_repeat("*", 12) . substr($ccnum, -4);

}


$ccnum = $_POST["ccnum"];
$expiryMonth = $_POST["expiryMonth"];
$expiryYear = $_POST["expiryYear"];
$cvv = $_POST["cvv"];
$enc = md5($ccnum);
$expiryDate = $expiryYear.$expiryMonth."01";
$newDate = date("Y-m-d", strtotime($expiryDate));
$mysql = "INSERT INTO `card` (`#`, `ccnum`, `expdate`, `seccode`)
 VALUES ('#','$enc', '$expiryDate', '$cvv');";
 
 if ($conn->query($mysql)) {
    echo "New record created successfully";
} 
else {
    echo "Error";
}

?>
<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>The BookStore</title>
</head>

<body>
    <header>
        <section class="logo">
            <img src="Images/logo4.png">
        </section>
        <nav class="menu">
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Products</a></li>
                <li><a href="#">About us</a></li>
                <li><a href="#">contact</a></li>
            </ul>
        </nav>
    </header>
    <main class="checkout">   
        <section class="container">
    <article class="msg">You have successfully entered your card details </article>
    <article> debit/credit card </article>  <img src="Images/mc2.png">
    <article> Your credit card number ends  <?php echo mask_credit_card($ccnum); ?> </article> 
    </section>
    </main>
    </section>
    <footer class="foot">
        <section class="container">
            <div class="row">
                <div class="footer-col-1">
                    <p class="copyright">© The Book Store, 2021. The Book Store Limited. </p>
                </div>
                <div class="footer-col-2">
                    <h3>Follow us</h3>
                    <ul>
                        <li>Instagram</li>
                        <li>Facebook</li>
                        <li>Snapchat</li>
                        <li>Twitter</li>
                    </ul>
                </div>
            </div>
        </section>
    </footer>
  
</body>
