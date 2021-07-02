<?php
require_once 'model/autoload.php';

$event = new Event();
$service = new Services();

$eventList = $event->getEnventType(($_GET['search'] ?? ''));
//echo "<pre>";
//print_r ($eventList);
//echo "</pre>";
//
//die();
$serv = $service->getServicesType();
?>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from design.dev.drcsystems.ooo:8084/themeforest/event_planning/search-result.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2020 19:19:20 GMT -->
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
    <link href="assets/css/datepicker.css" rel="stylesheet" /><!-- Date picker css -->
    <link href="assets/css/docs.css?version=1" rel="stylesheet"><!--  template structure css -->
    
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
        
        <div class="searchFilter-main">
            <section class="searchFormTop">
                <div class="container">
                    <div class="searchCenter">
                        <div class="refineCenter">
                            <span class="icon icon-filter"></span>
                            <span>Refine Results</span> 
                        </div>
                        <div class="searchFilter">
                            <form method="get">
                                <div class="input-box">
                                    <div class="icon icon-grid-view"></div>
                                    <input type="text" name="search" placeholder="Search Events" value="<?= ($_GET['search'] ?? '' )?>">
                                </div>
                                <!--                            <div class="input-box searchlocation">-->
                                <!--                                <div class="icon icon-location-1"></div>-->
                                <!--                                <input type="text" placeholder="Germany - Berlin / East">-->
                                <!--                            </div>-->
                                <input type="submit" class="btn">
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <section class="content">
                <div class="breadcrumb">
                    <div class="container">
                        <ul>
                            <li><a href="#">Home</a>/</li>
                            <li><a href="#">Events</a></li>
                        </ul>
                    </div>
                </div>
                <div class="container">
                    <div class="venues-view">
                        <div class="row">
                            <!--<div class="col-lg-3 col-md-3 col-sm-12">
                                <div class="left-side">
                                    <div class="search">
                                        <div class="search-icon"><div class="icon icon-search"></div></div>
                                        <input type="text" placeholder="Search by name">
                                    </div>
                                    <div class="filter-view">
                                        <div class="filter-block">
                                            <div class="title">
                                                <h2>Food And Drinks</h2>
                                            </div>
                                            <div class="check-slide">
                                                <label class="label_check" for="checkbox-20"><input type="checkbox" name="sample-checkbox-01" id="checkbox-20" value="1">Non Vegetarian</label>
                                            </div>
                                            <div class="check-slide">
                                                <label class="label_check" for="checkbox-21"><input type="checkbox" name="sample-checkbox-01" id="checkbox-21" value="1">Vegetarian</label>
                                            </div>
                                        </div>
                                        <div class="filter-block">
                                            <div class="title">
                                                <h2>Number of Guests</h2>
                                                <div class="reste-filter">
                                                    <a href="#"><span class="icon icon-reset"></span>Reset</a>
                                                </div>
                                            </div>
                                            <div class="check-slide">
                                                <label class="label_check" for="checkbox-22"><input type="checkbox" name="sample-checkbox-01" id="checkbox-22" value="1">&lt; 10</label>
                                            </div>
                                            <div class="check-slide">
                                                <label class="label_check" for="checkbox-23"><input type="checkbox" name="sample-checkbox-01" id="checkbox-23" value="1">10 - 100</label>
                                            </div>
                                            <div class="check-slide">
                                                <label class="label_check" for="checkbox-24"><input type="checkbox" name="sample-checkbox-01" id="checkbox-24" value="1">100 - 200</label>
                                            </div>
                                            <div class="check-slide">
                                                <label class="label_check" for="checkbox-25"><input type="checkbox" name="sample-checkbox-01" id="checkbox-25" value="1" checked="">200 - 500</label>
                                            </div>
                                            <div class="check-slide">
                                                <label class="label_check" for="checkbox-26"><input type="checkbox" name="sample-checkbox-01" id="checkbox-26" value="1" >&gt; 500</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="left-link">
                                        <h2>People also viewed...</h2>
                                        <ul>
                                            <li><a href="#"><span class="icon icon-arrow-right"></span>Denmark</a></li>
                                            <li><a href="#"><span class="icon icon-arrow-right"></span>Germany - Frankfurt / West</a></li>
                                            <li><a href="#"><span class="icon icon-arrow-right"></span>Greater Mexico City</a></li>
                                            <li><a href="#"><span class="icon icon-arrow-right"></span>HI - Big Island</a></li>
                                            <li><a href="#"><span class="icon icon-arrow-right"></span>Hungary</a></li>
                                            <li><a href="#"><span class="icon icon-arrow-right"></span>Poland</a></li>
                                        </ul>
                                    </div>
                                    <div class="left-productBox hidden-sm">
                                        <h2>Featured Venues</h2>
                                        <div class="product-img"><img src="assets/images/property-img/venues-img8.jpg" alt=""></div>
                                        <h3>Hilton Berlin </h3>
                                        <p>Mohrenstrasse 30 Berlin, 10117 - Germany</p>
                                        <div class="reviews">3.5 <div class="star"><div style="width:70%;" class="fill"></div></div>reviews</div>
                                        <a href="#">Vewi all Details <span class="icon icon-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>-->
                            <div class="col-md-10 col-lg-10 col-sm-12 col-lg-offset-1">
                                <div class="right-side">
                                    <div class="toolbar">
                                        <div class="finde-count"><?= count($eventList)?> Events found.  </div>
<!--                                        <div class="right-tool">-->
<!--                                            <div class="select-box">-->
<!--                                                <select name="country_id" id="setUp_select" tabindex="1" >-->
<!--                                                    <option>Near by</option>-->
<!--                                                    <option>Near by</option>-->
<!--                                                    <option>Near by</option>-->
<!--                                                    <option>Near by</option>-->
<!--                                                    <option>Near by</option>-->
<!--                                                </select>-->
<!--                                            </div>-->
<!--                                            <a href="#" class="shortlist-btn"><span class="icon icon-heart-filled"></span>7 Shortlist</a>-->
<!--                                            <div class="link">-->
<!--                                                <ul>-->
<!--                                                    <li><a href="#">Map</a></li>-->
<!--                                                    <li class="active"><a href="#">List</a></li>-->
<!--                                                </ul>-->
<!--                                            </div>-->
<!--                                        </div>-->

                                    </div>
                                    <?php
                                        foreach ($eventList as $item)
                                        {

                                    ?>
                                    <div class="venues-slide">
                                        <div class="img"><img src="images/<?= $item->image?>" alt=""></div>
                                        <div class="text">
                                            <h3><?= $item->event_type_name ?> </h3>
                                            <h4>Services</h4>
                                            <div class="address">
                                                <?php
                                                $i=0;
												foreach($serv as $s)
												{
												    if ($i++ == 4){
												        break;
													}
													echo $s->service_name . "<br>";
												}
                                                ?>
                                            </div>

                                            <div class="button">
                                                <a href="services.php?event_id=<?= $item->event_type_id?>" class="btn">Book Now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php
                                        }
                                    ?>
<!--                                    <div class="pagination">-->
<!--                                        <ul>-->
<!--                                            <li class="prev disabled"><a href="#">Prev</a></li>-->
<!--                                            <li class="active"><a href="#">1</a></li>-->
<!--                                            <li><a href="#">2</a></li>-->
<!--                                            <li><a href="#">3</a></li>-->
<!--                                            <li><a href="#">4</a></li>-->
<!--                                            <li><a href="#">5</a></li>-->
<!--                                            <li class="next"><a href="#">Next</a></li>-->
<!--                                        </ul>-->
<!--                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
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
    
    <script type="text/javascript" src="assets/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/owl.carousel.js"></script>
    <script type="text/javascript" src="assets/js/jquery.selectbox-0.2.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="assets/js/jquery.form-validator.min.js"></script>
	<script type="text/javascript" src="assets/js/placeholder.js"></script>
    <script type="text/javascript" src="assets/js/coustem.js"></script>
    
</body>

<!-- Mirrored from design.dev.drcsystems.ooo:8084/themeforest/event_planning/search-result.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2020 19:19:42 GMT -->
</html>

