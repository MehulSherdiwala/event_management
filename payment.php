<?php
require_once 'model/autoload.php';

if (!isset($_SESSION['user_id'])){
	header("location: index.php?trigger=true");
}
$book = new Book();

$service = $book->getBookedService($_GET['book_id']);

if ($service->deposit == 0){
    $payAmt = (int)(($service->amount * 50) / 100);
} else {
    $payAmt = $service->amount - $service->deposit;
}
?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from design.dev.drcsystems.ooo:8084/themeforest/event_planning/booking_step2.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2020 19:21:41 GMT -->
<head>
    <!-- Meta information -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"><!-- Mobile Specific Metas -->
    
    <!-- Title -->
    <title>Event Planning</title>
    
    <!-- favicon icon -->
    <link rel="shortcut icon" href="assets/images/Favicon.ico">
    
    <!-- CSS Stylesheet -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"><!-- bootstrap css -->
    <link href="assets/css/owl.carousel.css" rel="stylesheet"><!-- carousel Slider -->
    <link href="assets/css/styles.css" rel="stylesheet" /><!-- font css -->
    <link href="assets/css/jquery.selectbox.css" rel="stylesheet" /><!-- select Box css -->
    <link href="assets/css/docs.css" rel="stylesheet"><!--  template structure css -->
    
    <!-- Used Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Domine:400,700%7COpen+Sans:300,300i,400,400i,600,600i,700,700i%7CRoboto:400,500" rel="stylesheet"> 
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>

<body class="inner-page">
    <div class="page">
        <?php
        include 'header.php';
        ?>
        <div class="step-nav">
            <div class="container">
                <div class="inner-nav">	
                    <ul>
                        <li class="first fill"><a href="#"><span class="number">1</span><span class="text">Cart Summary</span></a></li>
                        <li class="active"><a href="#"><span class="number">2</span><span class="text">Payment Details</span></a></li>
                        <li class="last"><a href="#"><span class="number">3</span><span class="text">Order Confirm</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="breadcrumb">
            <div class="container">
                <ul>
                    <li><a href="#">Home</a>/</li>
                    <li><a href="#">Event Organizers</a>/</li>
                    <li class="active"><a href="#">Payment Details</a></li>
                </ul>
            </div>
        </div>
        <div class="content">
            <div class="container">
                <div class="bookin-info">
                    <div class="payment-detail">
                        <div class="totalPayment">
                            <div class="total">Minimum payment to be made :  <span> Rs. <?= $payAmt ?>  </span></div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="payment-opction">
                                    <ul>
<!--                                        <li class="active"><a href="javascript:;" id="saveCard">Saved Details<span class="icon icon-arrow-right"></span></a></li>-->
                                        <li class="active"><a href="javascript:;" id="debitCard">Debit Card<span class="icon icon-arrow-right"></span></a></li>
                                        <li><a href="javascript:;" id="creditCard">Credit Card<span class="icon icon-arrow-right"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <form action="payment_action.php" method="post">
                                    <div class="payment-type debitCard-info" style="display: block">
                                        <div class="debitCard">
                                            <div class="input-box">
                                                <label>Enter Debit Card Number</label>
                                                <input type="text">
                                                <div class="card-logo">
                                                    <img src="assets/images/visaCard-img.png" alt="">
                                                    <img src="assets/images/card-logo2.png" alt="">
                                                    <img src="assets/images/card-logo3.png" alt="">
                                                    <img src="assets/images/card-logo4.png" alt="">
                                                </div>
                                            </div>
                                            <div class="date-info">
                                                <div class="input-slide">
                                                    <label>Expiry Date</label>
                                                    <div class="month-select">
                                                        <select id="month_select" tabindex="1" >
                                                            <option>MM</option>
                                                            <option>Jan</option>
                                                            <option>Feb</option>
                                                            <option>Mar</option>
                                                            <option>Apr</option>
                                                            <option>May</option>
                                                            <option>June</option>
                                                            <option>July</option>
                                                            <option>Aug</option>
                                                            <option>Sep</option>
                                                            <option>Oct</option>
                                                            <option>Nov</option>
                                                            <option>dec</option>
                                                        </select>
                                                    </div>
                                                    <div class="month-select">
                                                        <select id="year_select" tabindex="1" >
                                                            <option>YY</option
                                                            <option>2020</option>
                                                            <option>2021</option>
                                                            <option>2022</option>
                                                            <option>2023</option>
                                                            <option>2024</option>
                                                            <option>2025</option>
                                                            <option>2026</option>
                                                            <option>2027</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="cvv-input">
                                                    <label>CVV</label>
                                                    <input type="password" >
                                                </div>
                                            </div>
                                            <div class="save-detail form-group" style="width: 20%">
                                                <label>Amount</label>
                                                <input type="number" name="amount[]" class="form-control" min="<?= $payAmt ?>" value="<?= $payAmt ?>" max="<?= $service->amount ?>" required>
                                                <input type="hidden" name="book_id" value="<?= $_GET['book_id'] ?>">
                                            </div>
                                            <div class="submit-slide">
                                                <input type="submit" name="debit" value="Pay Now" class="btn">
                                                <a href="javascript:void(0);" class="cancle">Cancel</a>
                                            </div>
                                            <div class="note"><span class="icon icon-lock"></span>Your payment details are secured via 128 Bit encryption by Version</div>
                                        </div>
                                    </div>
                                    <div class="payment-type creditCard-info">
                                    <div class="debitCard">
                                        <div class="input-box">
                                            <label>Enter Credit Card Number</label>
                                            <input type="text">
                                            <div class="card-logo">
                                                <img src="assets/images/visaCard-img.png" alt="">
                                                <img src="assets/images/card-logo2.png" alt="">
                                                <img src="assets/images/card-logo5.png" alt="">
                                                <img src="assets/images/card-logo6.png" alt="">
                                            </div>
                                        </div>
                                        <div class="date-info">
                                            <div class="input-slide">
                                                <label>Expiry Date</label>
                                                <div class="month-select">
                                                    <select id="month_select2" tabindex="1" >
                                                    <option>MM</option>
                                                    <option>Jan</option>
                                                    <option>Feb</option>
                                                    <option>Mar</option>
                                                    <option>Apr</option>
                                                </select>
                                                </div>
                                                <div class="month-select">
                                                    <select id="year_select2" tabindex="1" >
                                                        <option>YY</option>
                                                        <option>2020</option>
                                                        <option>2021</option>
                                                        <option>2022</option>
                                                        <option>2023</option>
                                                        <option>2024</option>
                                                        <option>2025</option>
                                                        <option>2026</option>
                                                        <option>2027</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="cvv-input">
                                                <label>CVV</label>
                                                <input type="password" >
                                            </div>
                                        </div>
                                        <div class="save-detail form-group" style="width: 20%">
                                            <label>Amount</label>
                                            <input type="number" name="amount[]" class="form-control" min="<?= $payAmt ?>" value="<?= $payAmt ?>" max="<?= $service->amount ?>" required>
                                        </div>
                                        <div class="submit-slide">	
                                            <input type="submit" name="credit" value="Pay Now" class="btn">
                                            <a href="javascript:void(0);" class="cancle">Cancel</a>
                                        </div>
                                        <div class="note"><span class="icon icon-lock"></span>Your payment details are secured via 128 Bit encryption by Version</div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
        include 'footer.php';
        ?>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script type="text/javascript" src="assets/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/owl.carousel.js"></script>
    <script type="text/javascript" src="assets/js/jquery.selectbox-0.2.js"></script>
    <script type="text/javascript" src="assets/js/jquery.form-validator.min.js"></script>
	<script type="text/javascript" src="assets/js/placeholder.js"></script>
    <script type="text/javascript" src="assets/js/coustem.js"></script>

</body>
</html>
