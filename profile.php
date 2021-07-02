<?php
require_once 'model/autoload.php';
if (!isset($_SESSION['user_id'])){
    header("Location: index.php");
}
$user = new User();
$loc = new Location();

$userDetails = $user->getUserDetails($_SESSION['user_id']);
$city = $loc->getCity($userDetails['city_id']);
$state = $loc->getState($city['state_id']);

$countryList = $loc->getCountry();
$stateList = $loc->getState($state['country_id'],'country');
$cityList = $loc->getCity($state['state_id'],'state');


?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from design.dev.drcsystems.ooo:8084/themeforest/event_planning/account_usering.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2020 19:22:50 GMT -->
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
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/all.min.css">
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
        <div class="dashboard-banner">
            <div class="container">
                <h2>My Dashboard</h2>
                <div class="breadcrumb">
                    <ul>
                        <li><a href="#">Home</a>/</li>
                        <li class="active"><a href="#">My Account</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="container">
                <div class="my-account">
                    <div class="account-tab">
                        <ul>
                            <li class="active"><a href="javascript:void(0);" id="profile">Profile</a></li>
                            <li><a href="user_bookings.php" id="order">Order</a></li>
                            <li><a href="chat.php">Chat</a></li>
                        </ul>
                    </div>
                    <div class="tab-content order-con open">
                        <div class="personal-edit">
                            <a href="javascript:void(0);" data-toggle="modal" data-target="#edit_profile"><span class="icon icon-pencile"></span>Edit Profile</a>
                        </div>
                        <div class="personal-information">
                            <div class="info-slide">
                                <p><span>Name :</span><?= $userDetails['user_name'] ?></p>
                            </div>
                            <div class="info-slide">
                                <p><span>Email ID :</span><?= $userDetails['email'] ?></p>
                            </div>
                            <div class="info-slide">
                                <p><span>Mobile Number :</span><?= $userDetails['contact'] ?></p>
                            </div>
                            <div class="info-slide">
                                <p><span>Gender :</span><?= $userDetails['gender'] ?></p>
                            </div>
                            <div class="info-slide">
                                <p><span>Address  :</span><?= $userDetails['address'] ?></p>
                            </div>
                            <div class="info-slide">
                                <p><span>Location  :</span><?= $userDetails['loc'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="functionality-view">
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
        </div>
        <?php
        include 'footer.php';
        ?>
    </div>
    <div class="modal fade " id="edit_profile" tabindex="-1" role="dialog" >
        <div class="modal-dialog contactvendor-popup modal-lg" role="document">
            <div class="modal-content">
                <div class="close-icon" aria-label="Close" data-dismiss="modal" ><img src="assets/images/close-icon.png" alt=""></div>
                <h1>Edit Profile</h1>
                <div class="row" style="padding: 20px">
                    <form action="profile_action.php" method="post">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="form-group">
                                <label>Username </label>
                                <input type="text" name="user_name" id="user_name" class="form-control" value="<?= $userDetails['user_name'] ?>"/>
                            </div>
                            <div class="form-group">
                                <label>Mobile No </label>
                                <input type="number" name="contact" id="contact" class="form-control" maxlength="10" value="<?= $userDetails['contact'] ?>"/>
                            </div>
                            <div class="form-group">
                                <label>Gender </label>
                                <select name="gender" class="form-control" id="gender">
                                    <option value="0">Select Gender</option>
                                    <option value="1">Male</option>
                                    <option value="2">Female</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Address </label>
                                <textarea name="address" id="address" class="form-control"><?= $userDetails['address'] ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>Country </label>
                                <select id="country" class="form-control" required data-parsley-min="1"
                                        data-parsley-min-message="This value is required.">
                                    <option value="0">Select Country</option>
									<?php
									foreach ($countryList as $c)
									{
										?>
                                        <option value="<?= $c['country_id'] ?>" <?= ($c['country_id']==$state['country_id']) ? 'selected' : '' ?>><?= $c['country_name'] ?></option>
										<?php
									}
									?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>State</label>
                                <select id="state" class="form-control" required data-parsley-min="1"
                                        data-parsley-min-message="This value is required.">
                                    <option value="0">Select State</option>
									<?php
									foreach ($stateList as $s)
									{
										?>
                                        <option value="<?= $s['state_id'] ?>" <?= ($s['state_id']==$state['state_id']) ? 'selected' : '' ?>><?= $s['state_name'] ?></option>
										<?php
									}
									?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>City</label>
                                <select name="city_id" id="city" class="form-control" required data-parsley-min="1"
                                        data-parsley-min-message="This value is required.">
                                    <option value="0">Select City</option>
                                    <?php
									foreach ($cityList as $c)
									{
										?>
                                        <option value="<?= $c['city_id'] ?>" <?= ($c['city_id']==$city['city_id']) ? 'selected' : '' ?>><?= $c['city_name'] ?></option>
										<?php
									}
									?>

                                </select>
                            </div>
                            <hr>
                            <button type="submit" class="btn btn-block">Edit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <!-- Bootstrap core JavaScript
        ================================================== --> 
    <!-- Placed at the end of the document so the pages load faster --> 
    <script type="text/javascript" src="assets/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/jquery.form-validator.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.selectbox-0.2.js"></script>
    <script type="text/javascript" src="assets/js/coustem.js"></script>
    <script type="text/javascript" src="assets/js/placeholder.js"></script>

    <script>

        $("#gender>option[value=" + <?= $userDetails['gender_numeric']?> + "]").prop("selected", true);

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
</html>
