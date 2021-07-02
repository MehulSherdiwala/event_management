<?php
require_once 'model/autoload.php';


if(isset($_POST['email'])){
    $db = new Database();
    $data = array(
        'vendor_name'   => $_POST['vendor_name'],
        'email'         => $_POST['email'],
        'org_name'      => $_POST['org_name'],
        'city_id'       => $_POST['city_id'],
        'contact'       => $_POST['contact'],
        'password'      => $_POST['password'],
        'address'       => $_POST['address'],
        'status'        => 0
    );

    $db->insert('vendor',$data);
	$vendor_id = $db->getId($_POST['email'],$_POST['password'],'vendor');

	if ($vendor_id > 0){
		$_SESSION['vendor_id'] = $vendor_id;
		$_SESSION['vendor_name'] = $_POST['vendor_name'];
		header("location:index.php");
	} else {
		$error = "User Can't register";
	}

}


$loc = new Location();

$country = $loc->getCountry();

?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from design.dev.drcsystems.ooo:8084/themeforest/assets/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2020 19:23:10 GMT -->
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


<body class="registerPage">
    <div class="page">
        <?php
        include 'header.php';
        ?>

        <div class="register-banner">
            <img src="assets/images/banner-img/registration-banneBg.png" alt="" class="register-bannerImg">
            <div class="inner-banner">
                <div class="text">Lorem Ipsum has been the when an unknown printer took a  <span> galley of type</span></div>
                <div class="register-form">
                    <div class="inner-form">
                        <h1>Register Now</h1>
                        <form method="post" action="vendor_register.php" data-parsley-validate>
                            <div class="form-filde">
                                <div class="input-slide">
                                    <input type="text" name="vendor_name" placeholder="Name" required>
                                </div>
                                <div class="input-slide">
                                    <input type="email" name="email" placeholder="Email ID" required>
                                </div>
                                <div class="input-slide">
                                    <input type="text" name="org_name" placeholder="Company Name" required>
                                </div>
                                <div class="input-slide">
                                    <textarea name="address" placeholder="Address" class="form-control"></textarea>
                                </div>
                                <div class="select-row">
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
                                <div class="select-row">
                                    <select id="state" class="form-control" required data-parsley-min="1" data-parsley-min-message="This value is required." >
                                        <option value="0">Select State</option>
                                    </select>
                                </div>
                                <div class="select-row">
                                    <select name="city_id" id="city" class="form-control" required data-parsley-min="1" data-parsley-min-message="This value is required." >
                                        <option value="0">Select City</option>
                                    </select>
                                </div>
                                <div class="input-slide">
                                    <input type="number" name="contact" placeholder="Phone Number" required>
                                </div>
                                <div class="input-slide">
                                    <input type="password" name="password" placeholder="Password" required>
                                </div>
                                <div class="text-center text-danger"><?= $error?? '' ?></div>
                                <div class="submit-slide">
                                    <input type="submit" value="Submit" class="btn">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="normal-link">
                        <a href="#">More than just a calendar</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="register-content">
            <div class="benefits">
                <div class="container">
                    <div class="heading">
                        <div class="icon"><em class="icon icon-heading-icon"></em></div>
                        <div class="text">
                            <h2>Benefits</h2>
                        </div>
                    </div>
                    <div class="benefits-view">
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <div class="box-view">
                                    <div class="iconBox icon1"><div class="icon icon-conversion-rates"></div></div>
                                    <div class="text">Increase your conversion rates</div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="box-view">
                                    <div class="iconBox icon2"><div class="icon icon-customer-base"></div></div>
                                    <div class="text">Increase customer base</div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="box-view">
                                    <div class="iconBox icon3"><div class="icon icon-negotiations"></div></div>
                                    <div class="text">Low multiple negotiations</div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="box-view">
                                    <div class="iconBox icon4"><div class="icon icon-wider-customer"></div></div>
                                    <div class="text">Wider customer reach</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="choose-us">
                <div class="container">	
                    <div class="heading">
                        <div class="icon"><em class="icon icon-heading-icon"></em></div>
                        <div class="text">
                            <h2>Why Choose Us?</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-3">
                            <div class="functionality-box">
                                <div class="iconBox"><div class="icon icon-lead-management"></div></div>
                                <h3>Lead Management</h3>
                                <p>Increase occupancy, automate the lead management process, grow your  customer relationships, match sales-ready leads to the appropriate sales people.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="functionality-box">
                                <div class="iconBox"><div class="icon icon-sales"></div></div>
                                <h3>Sales</h3>
                                <p>Track sales opportunities, manage the sales process and generate proposals. Built-in process provides an aggregate view of account activity from the past, present and future.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="functionality-box">
                                <div class="iconBox"><div class="icon icon-booking"></div></div>
                                <h3>Booking</h3>
                                <p>Manage calendars , share availability, easily view events color-coded by status, type or location. Book and manage multiple spaces, venues, and sites all from one master calendar.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="functionality-box">
                                <div class="iconBox"><div class="icon icon-operations"></div></div>
                                <h3>Operations</h3>
                                <p>Assign resources and review stock alerts. Create detailed reports, work orders, and generate invoices. Receive alerts on changes as they take place.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="work-info">
                <div class="container">
                    <div class="heading">
                        <div class="icon"><em class="icon icon-heading-icon"></em></div>
                        <div class="text">
                            <h2>How it works</h2>
                        </div>
                        <div class="info-text">Once you have registered, listing on Event Planning is just a four step process</div>
                    </div>
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                            <div class="box">
                                <div class="iconBox">
                                    <div class="inner-box">
                                        <div class="icon icon-step-1"></div>
                                    </div>
                                </div>
                                <div class="text"><span>1.</span> List your venues on Event Planning</div>
                            </div>
                            <div class="box">
                                <div class="iconBox">
                                    <div class="inner-box">
                                        <div class="icon icon-step-2"></div>
                                    </div>
                                </div>
                                <div class="text"><span>2.</span> Connect to customers</div>
                            </div>
                            <div class="box">
                                <div class="iconBox">
                                    <div class="inner-box">
                                        <div class="icon icon-step-4"></div>
                                    </div>
                                </div>
                                <div class="text"><span>3.</span> Increase your business</div>
                            </div>
                            <div class="box last">
                                <div class="iconBox">
                                    <div class="inner-box">
                                        <div class="icon icon-step-3"></div>
                                    </div>
                                </div>
                                <div class="text"><span>4.</span> You receive payment from Event Planning</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="price-info">
                <div class="container">
                    <div class="heading">
                        <div class="icon"><em class="icon icon-heading-icon"></em></div>
                        <div class="text">
                            <h2>Pricing</h2>
                        </div>
                        <div class="info-text">Enjoy promotional rates for listing on Event Planning for a limited period only</div>
                    </div>
                    <div class="listing-view">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="list">No monthly subscription fee</div>
                            </div>
                            <div class="col-sm-4">
                                <div class="list">Listing of venues absolutely free</div>
                            </div>
                            <div class="col-sm-4">
                                <div class="list">Zero installation charges</div>
                            </div>
                        </div>
                    </div>
                    <div class="register-btn">
                        <a href="#" class="btn">Register Now</a>
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
	<script type="text/javascript" src="assets/js/parsley.js"></script>
    <script type="text/javascript" src="assets/js/coustem.js"></script>
    <script type="text/javascript" src="assets/js/login.js"></script>

    <script>
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
    </script>

</body>

<!-- Mirrored from design.dev.drcsystems.ooo:8084/themeforest/assets/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2020 19:23:10 GMT -->
</html>
