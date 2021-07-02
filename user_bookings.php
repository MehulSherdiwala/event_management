<?php
require_once 'model/autoload.php';

$book = new Book();

$order = $book->getOrder($_SESSION['user_id']);
//echo "<pre>";
//print_r ($order);
//echo "</pre>";
//
//die();

?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from design.dev.drcsystems.ooo:8084/themeforest/event_planning/account_booking.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2020 19:22:50 GMT -->
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
                            <li><a href="javascript:void(0);" id="profile">Profile</a></li>
                            <li class="active"><a href="javascript:void(0);" id="order">Order</a></li>
                            <li><a href="javascript:void(0);" id="changePassword">Change Password</a></li>
                        </ul>
                    </div>
                    <div class="tab-content profile-con">
                        <div class="personal-edit">
                            <a href="#"><span class="icon icon-pencile"></span>Edit Profile</a>
                        </div>
                        <div class="personal-information">
                            <div class="info-slide">
                                <p><span>Name :</span>Stefan Hartmann</p>
                            </div>
                            <div class="info-slide">
                                <p><span>Email ID :</span>StefanHartmann@jourrapide.com</p>
                            </div>
                            <div class="info-slide">
                                <p><span>Mobile Number :</span>02692 83 14 96</p>
                            </div>
                            <div class="info-slide">
                                <p><span>Date Of Birth :</span>June 6, 1987</p>
                            </div>
                            <div class="info-slide">
                                <p><span>Gender :</span>Male</p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-content order-con open">
                        <table class="table table-bordered">
                            <tr>
                                <th>Booking ID</th>
                                <th>Event Name</th>
                                <th class="detail">Event Details</th>
                                <th>Event Date</th>
                                <th>No. of Services</th>
                                <th>Total Amount</th>
                                <th>Venue</th>
                                <th>Location</th>
                                <th></th>
                            </tr>
                                <?php
								foreach ($order as $item)
								{
                                    ?>
                                        <tr>
                                            <td><?= $item['event_id'] ?></td>
                                            <td><?= $item['event_type_name'] ?></td>
                                            <td><?= $item['event_name'] ?></td>
                                            <td><?= $item['event_date'] ?></td>
                                            <td><?= $item['serviceCount'] ?></td>
                                            <td><?= $item['totalAmount'] ?></td>
                                            <td><?= $item['venue'] ?></td>
                                            <td><?= $item['loc'] ?></td>
                                            <td>
                                                <button type="button" class="btn btn-sm services" data-eid="<?= $item['event_id']?>" data-toggle="modal" data-target="#view_services"><span class="fa fa-eye"></span></button></td>
                                        </tr>
                                    <?php
                                }
                                ?>
<!--                                <td><span class="small-heading">Booking ID</span>258452112500</td>
                                <td class="detail">
                                    <span class="small-heading">Booking Details</span>
                                    <div class="detailTd">
                                        <label>Hiraba Farm</label>
                                        <p>Behind Shalby Hospital, Garden Road, Prahlad Nagar , Ahmedabad-380015</p>
                                        <a href="#">Phone : +91-79-12345678</a>
                                    </div>
                                </td>
                                <td><span class="small-heading">Booking Date</span>25<sup>th</sup> Aug 2015</td>
                                <td><span class="small-heading">Event Date</span>15<sup>th</sup> Dec 2015</td>
                                <td><span class="small-heading">Paid Amount</span>$ 42,710</td>
                                <td><span class="small-heading">Meals</span>Evening</td>
                                <td><span class="small-heading">No. of Guests</span>1000</td>-->
                        </table>
                    </div>
                    <div class="tab-content changePassword-con">
                        <div class="change-password ">
                            <div class="input-box">
                                <input type="text" placeholder="Current Password">
                            </div>
                            <div class="input-box">
                                <input type="text" placeholder="New Password">
                            </div>
                            <div class="input-box">
                                <input type="text" placeholder="Confirm Password">
                            </div>
                            <div class="submit-box">
                                <input type="submit" value="Save" class="btn">
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
    <div class="modal fade " id="view_services" tabindex="-1" role="dialog" >
        <div class="modal-dialog contactvendor-popup modal-lg" role="document">
            <div class="modal-content">
                <div class="close-icon" aria-label="Close" data-dismiss="modal" ><img src="assets/images/close-icon.png" alt=""></div>
                <h1>Event Services</h1>
<!--                <div class="note">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</div>-->
                <div class="row" style="padding: 20px">
                    <div id="services"></div>
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
        $(".services").on('click', function (){
            let id = $(this).data('eid');
            let status = [
                "Waiting for Approval",
                "Waiting for payment",
                "Finalized",
                "Completed",
            ];

            $.ajax({
                url: '<?= base_url?>model/services.php?ajax=true&event_service=true&event_id='+id,
                success:function (res){
                    let obj = JSON.parse(res);
                    let html = '';

                    for (const key in obj) {
                        html += '<table class="table table-bordered table-striped">' +
                            '    <tr>' +
                            '        <td width="190px">Vendor Service Id</td>' +
                            '        <td>' + obj[key].vendor_service_id + '</td>' +
                            '        <td width="130px">Service Name</td>' +
                            '        <td>' + obj[key].service_name + '</td>' +
                            '    </tr>' +
                            '    <tr>' +
                            '        <td>Vendor Service Name</td>' +
                            '        <td>' + obj[key].vendor_service_name + '</td>' +
                            '        <td>Amount</td>' +
                            '        <td>' + obj[key].amount + '</td>' +
                            '    </tr>' +
                            '    <tr>' +
                            '        <td>Description</td>' +
                            '        <td>' + obj[key].description + '</td>' +
                            '        <td>Commission</td>' +
                            '        <td>' + obj[key].commission + '</td>' +
                            '    </tr>' +
                            '    <tr>' +
                            '        <td>Payment Mode</td>' +
                            '        <td>' + ((obj[key].payment_mode==null)? "Not Yet Done" :obj[key].payment_mode ) + '</td>' +
                            '        <td>Deposit</td>' +
                            '        <td>' + obj[key].deposit + '</td>' +
                            '    </tr>' +
                            '    <tr>' +
                            '        <td>Images</td>' +
                            '        <td><img src="../images/' + obj[key].image + '" alt="" class="img-responsive img-100"></td>' +
                            '        <td>Status</td>' +
                            '        <td>' + status[obj[key].status] + '</td>' +
                            '    </tr>' +
                            '</table>';
                    }
                    $("#services").html(html);
                }
            })
        })

    </script>
</body>
</html>
