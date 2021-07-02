<?php
require_once 'model/autoload.php';
error_reporting(0);

if (!isset($_SESSION['user_id'])){
    header("location: index.php?trigger=true");
}

$event  = new Event();
$loc    = new Location();
if (isset($_GET['service_id']))
{
	$service     = new Services();
	$serviceList = $service->getVendorService($_GET['vendor_service_id'],TRUE);
}elseif(isset($_GET['cart'])){
    $book       = new Book();
	$addToCart  = $book->addToCart($_SESSION['user_id']);
} else {
    header("Location: services.php");
}
$eventList  = $event->getEnventType();
$country    = $loc->getCountry();

?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from design.dev.drcsystems.ooo:8084/themeforest/event_planning/booking_step1.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2020 19:21:41 GMT -->
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
    <link rel="stylesheet" href="assets/plugins/datepicker/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/all.min.css">
    <link href="assets/css/docs.css" rel="stylesheet"><!--  template structure css -->

    <!-- Used Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Domine:400,700%7COpen+Sans:300,300i,400,400i,600,600i,700,700i%7CRoboto:400,500" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.assets/js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>

<body class="inner-page">
	<div class="page">
        <?php
        include "header.php";
        ?>
        <div class="step-nav">
            <div class="container">
                <div class="inner-nav">	
                    <ul>
                        <li class="first active"><a href="#"><span class="number">1</span><span class="text">Order Details</span></a></li>
                        <li><a href="#"><span class="number">2</span><span class="text">Payment Details</span></a></li>
                        <li class="last"><a href="#"><span class="number">3</span><span class="text">Order Confirm</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="breadcrumb">
            <div class="container">
                <ul>
                    <li><a href="#">Home</a>/</li>
                    <li><a href="#">Event</a>/</li>
                    <li class="active"><a href="#">Order Details</a></li>
                </ul>
            </div>
        </div>
        <div class="content">
            <div class="container" style="background-color: #fff; margin-top: 30px; margin-bottom: 30px">
                <div class="venues-view">
                    <div class="row">
                        <div class="col-md-5 col-md-offset-1">
                            <form action="send_approval.php" method="post">
                                <div class="form-group">
                                    <label>Event Name :: </label>
                                    <select name="event_id" class="form-control">
                                        <option value="0">Select Event</option>
                                        <?php
                                        $event_type_id = $_GET['event_id'] ?? 0;
										foreach ($eventList as $e)
										{
                                            echo "<option value='" . $e->event_type_id . "' " . (($e->event_type_id == $event_type_id) ? 'selected' : '') . ">" . $e->event_type_name . "</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Event Description :: </label>
                                    <textarea name="event_name" class="form-control" placeholder="Event Description"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Event Date :: </label>
                                    <input type="text" name="event_date" class="form-control date" placeholder="Event Date">
                                </div>
                                <div class="form-group">
                                    <label>Event Venue :: </label>
                                    <textarea name="venue" class="form-control" placeholder="Event Venue"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Country :: </label>
                                    <select id="country" class="form-control" required  data-parsley-min="1" data-parsley-min-message="This value is required." >
                                        <option value="0">Select Country</option>
										<?php
										foreach ($country as $c)
										{
											?>
                                            <option value="<?= $c['country_id'] ?>"><?= $c['country_name']?></option>
											<?php
										}
										?>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>State :: </label>
                                    <select id="state" class="form-control" required data-parsley-min="1" data-parsley-min-message="This value is required." >
                                        <option value="0">Select State</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>City :: </label>
                                    <select name="city_id" id="city" class="form-control" required data-parsley-min="1" data-parsley-min-message="This value is required." >
                                        <option value="0">Select City</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <?php
                                        if (isset($_GET['service_id'])){
                                            echo '<input type="hidden" name="service_id" value="' . $_GET["service_id"] . '"/>';
                                            echo '<input type="hidden" name="vendor_service_id" value="' . $_GET["vendor_service_id"] . '"/>';
                                        } else{
											echo '<input type="hidden" name="cart" value="1"/>';
										}
                                    ?>
                                    <button type="submit" name="submit" class="btn btn-block">Submit</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <br>
                            <h2 class="text-center">Services Details</h2>
                            <br>
                            <table class="table table-striped table-bordered" style="width: 95%">
                                <thead>
                                <tr>
                                    <th>Sr. No</th>
                                    <th>Service Name</th>
                                    <th>Vendor Name</th>
                                    <th>Amount</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody id="cart">
								<?php
								$sr = 0;
								if (isset($serviceList)){
									?>
                                    <tr>
                                        <td><?= ++$sr?></td>
                                        <td><?= $serviceList['vendor_service_name'] ?></td>
                                        <td><?= $serviceList['vendor_name']?></td>
                                        <td colspan="2"><span class="fa fa-rupee-sign"></span><?= $serviceList['amount'] ?></td>
                                    </tr>
									<?php
                                } elseif (isset($addToCart)){
									$sr = 0;
									foreach ($addToCart as $item)
									{
										?>
                                        <tr>
                                            <td><?= ++$sr?></td>
                                            <td><?= $item['vendor_service_name'] ?></td>
                                            <td><?= $item['vendor_name']?></td>
                                            <td><span class="fa fa-rupee-sign"></span><?= $item['amount'] ?></td>
                                            <td>
                                                <button type="button" class="btn btn-danger btn-sm remove" data-cart="<?= $item['service_cart_id'] ?>"><span class="fas fa-times"></span></button>
                                            </td>
                                        </tr>
										<?php
									}
                                }
								?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6 col-md-3">
                            <h5>Latest Updates</h5>
                            <div class="update-slide">
                                <div class="img"><img src="assets/images/event-img/update-img1.png" alt=""></div>
                                <div class="text">
                                    <p>Lorem ipsum is a dummy text full  service industrial design.</p>
                                    <a href="#">Read More</a>
                                </div>
                            </div>
                            <div class="update-slide">
                            <div class="img"><img src="assets/images/event-img/update-img2.png" alt=""></div>
                                <div class="text">
                                    <p>Integrated Design Systems is a  full-service industrial design.</p>
                                    <a href="#">Read More</a>
                                </div>
                            </div>
                            <div class="update-slide">
                            <div class="img"><img src="assets/images/event-img/update-img3.png" alt=""></div>
                                <div class="text">
                                    <p>when an unknown printer took a galley of type and specimen book.</p>
                                    <a href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-md-3 text-center">
                            <div class="footer-link">
                                <h5>Company</h5>
                                <ul>
                                    <li><a href="aboutUs.html">About Us</a></li>
                                    <li><a href="privacy_policy.html">Privacy Policy</a></li>
                                    <li><a href="career.html">Careers</a></li>
                                    <li><a href="blog.html">Blogs</a></li>
                                    <li><a href="contact.html">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-md-3">
                            <div class="footer-contact">
                                <h5>Contact us</h5>
                                <div class="contact-slide">
                                    <div class="icon icon-location-1"></div>
                                    <p>74 West Main Street, Oyster Bay, Berlin, 10963 - Germany </p>
                                </div>
                                <div class="contact-slide">
                                    <div class="icon icon-phone"></div>
                                    <p>516-482-2181 ext 101</p>
                                </div>
                               
                                <div class="contact-slide">
                                    <div class="icon icon-message"></div>
                                    <a href="MailTo:info@eventplanning.com">info@eventplanning.com</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-md-3">
                            <div class="contact-form">
                                <h5>Connect with us</h5>
                                <p>We'll keep you informed and updated Sign up for our email newsletters </p>
                                <div class="input-row">
                                    <div class="input-box">
                                        <input type="text" placeholder="First Name">
                                    </div>
                                    <div class="input-box">
                                        <input type="text" placeholder="Last Name">
                                    </div>
                                </div>
                                <div class="input-row email">
                                    <div class="input-box">
                                        <input type="text" placeholder="Email Address">
                                    </div>
                                    <div class="submit-box">
                                        <input type="submit" value="Submit">
                                    </div>
                                </div>
                                <div class="sosal-midiya">
                                    <ul>
                                        <li><a href="#"><span class="icon icon-facebook"></span></a></li>
                                        <li><a href="#"><span class="icon icon-twitter"></span></a></li>
                                        <li><a href="#"><span class="icon icon-linkedin"></span></a></li>
                                        <li><a href="#"><span class="icon icon-skype"></span></a></li>
                                        <li><a href="#"><span class="icon icon-google-plus"></span></a></li>
                                        <li><a href="#"><span class="icon icon-play"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <p>Copyright &copy; <span></span> - EventPlanning  | All Rights Reserved</p>
                </div>
            </div>
        </footer>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
<!--    <script type="text/javascript" src="assets/js/jquery-1.12.4.min.js"></script>-->
    <script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/owl.carousel.js"></script>
    <script type="text/javascript" src="assets/js/jquery.selectbox-0.2.js"></script>
    <script type="text/javascript" src="assets/js/jquery.form-validator.min.js"></script>
	<script type="text/javascript" src="assets/js/placeholder.js"></script>
<!--    <script type="text/javascript" src="../assets/plugins/bootstrap-datepicker/datepicker-init.js"></script>-->
    <script type="text/javascript" src="assets/plugins/datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="assets/js/coustem.js"></script>

    <script>


        let uri = window.location.toString();
        if (uri.indexOf("alert") > 0) {
            // decodeURI(uri.substring(uri.indexOf("alert")))
            alert("Order are proceed for approval");
            let clean_uri = uri.substring(0, uri.indexOf("?"));
            window.history.replaceState({}, document.title, clean_uri);
        }

        $(".date").datepicker({
            autoclose: true
        });

        $("#country").on('change', function (){
            let cid = $(this).val();

            $.ajax({
                url: 'model/location.php?ajax=true&state=true&country_id='+cid,
                method: 'get',
                success:function (res){
                    let obj = JSON.parse(res);
                    $("#city").empty()
                        .append($("<option></option>")
                            .attr("value" , 0)
                            .text("Select City"));
                    let state = $("#state");
                    state
                        .empty()
                        .append($("<option></option>")
                            .attr("value" , 0)
                            .text("Select State"));

                    $.each(obj , function (key , value) {
                        state
                            .append($("<option></option>")
                                .attr("value" , value.state_id)
                                .text(value.state_name));
                    });
                }
            })
        });
        $("#state").on('change', function (){
            let sid = $(this).val();

            $.ajax({
                url: 'model/location.php?ajax=true&city=true&state_id='+sid,
                method: 'get',
                success:function (res){
                    let obj = JSON.parse(res);
                    let city = $("#city");
                    city
                        .empty()
                        .append($("<option></option>")
                            .attr("value" , 0)
                            .text("Select City"));

                    $.each(obj , function (key , value) {
                        city
                            .append($("<option></option>")
                                .attr("value" , value.city_id)
                                .text(value.city_name));
                    });
                }
            })
        });

        $(".remove").on('click', function (){
            let id = $(this).data('cart');

            removeCart(id);
        });

        async function removeCart(id){
            const res = await fetch('model/book.php?ajax=true&remove_cart=true&service_cart_id=' + id);
            const obj = await res.json();

            if (obj != "error"){
                let sr = 0;
                let html = '';
                for (const k in obj) {
                    html += '<tr>' +
                        '<td>' + (++sr) + '</td>' +
                        '<td>' + obj[k].vendor_service_name + '</td>' +
                        '<td>' + obj[k].vendor_name + '</td>' +
                        '<td><span class="fa fa-rupee-sign"></span>' + obj[k].amount + '</td>' +
                        '<td>' +
                        '<button type="button" class="btn btn-danger btn-sm remove" data-cart="' + obj[k].service_cart_id + '"><span class="fas fa-times"></span></button>' +
                        '</td>' +
                        '</tr>';
                }
                $("#cart").html(html);
            } else {
                alert("Something is wrong.......")
            }

            $(".remove").on('click', function (){
                let id = $(this).data('cart');

                removeCart(id);
            });
        }
    </script>

</body>
</html>
