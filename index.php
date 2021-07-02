<?php
require_once 'model/autoload.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
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
    <link href="assets/css/datepicker.css" rel="stylesheet" /><!-- Date picker css -->
    <link href="assets/css/loader.css" rel="stylesheet"><!-- Loader Box css -->
    <link href="assets/css/docs.css?version=2" rel="stylesheet"><!--  template structure css -->

    <!-- Used Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Domine:400,700%7COpen+Sans:300,300i,400,400i,600,600i,700,700i%7CRoboto:400,500" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<div class="page">
<!--    <div id="loader-wrapper">-->
<!--        <div id="loader"><img src="assets/images/loader.gif" alt=""></div>-->
<!--        <div class="loader-section section-left"></div>-->
<!--        <div class="loader-section section-right"></div>-->
<!--    </div>-->
    <?php
    include "header.php";
    ?>

    <section class="banner">
        <div class="carousel" id="mainBnner">
            <div class="item"><img src="assets/images/banner-img/slider-img.jpg" alt=""></div>
            <div class="item"><img src="assets/images/banner-img/slider-img2.jpg" alt=""></div>
            <div class="item"><img src="assets/images/banner-img/slider-img3.jpg" alt=""></div>
        </div>
        <div class="banner-nav">
            <div class="prev"><span class="icon icon-arrow-left"></span></div>
            <div class="next"><span class="icon icon-arrow-right"></span></div>
        </div>
        <div class="banner-text">
            <div class="container">
                <div class="search-title">
                    <h1> Every Event Should be  <span>Perfect</span></h1>
                </div>
                <div class="banner-search">
                    <div class="input-box">
                        <div class="icon icon-grid-view"></div>
                        <input type="text" placeholder="Event Type">
                    </div>
                    <div class="input-box location">
                        <div class="icon icon-location-1"></div>
                        <input type="text" placeholder="Event Location">
                    </div>
                    <div class="input-box date">
                        <div class="icon icon-calander-month"></div>
                        <input type="text" placeholder="Select Date" id="datepicker2">
                    </div>
                    <div class="submit-slide">
                        <input type="submit" value="Search Now" class="btn">
                    </div>
                    <p>Create the Perfect Event</p>
                </div>
            </div>
        </div>
    </section>
    <section class="service-type">
        <div class="container">
            <div class="heading">
                <div class="icon"><em class="icon icon-heading-icon"></em></div>
                <div class="text">
                    <h2>Our Services</h2>
                </div>
                <div class="info-text">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</div>
            </div>
            <div class="service-catagari">
                <ul>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-caterers"></span>
                            <span class="text">Caterers</span>
                        </a>
                    </li>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-flower-pot"></span>
                            <span class="text">Decor & Florists</span>
                        </a>
                    </li>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-calander"></span>
                            <span class="text">Event Planner</span>
                        </a>
                    </li>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-beauty"></span>
                            <span class="text">Make-up and Hair</span>
                        </a>
                    </li>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-wedding-card"></span>
                            <span class="text">Wedding Cards</span>
                        </a>
                    </li>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-mehandi"></span>
                            <span class="text">Mehandi</span>
                        </a>
                    </li>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-cake"></span>
                            <span class="text">Cakes</span>
                        </a>
                    </li>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-music"></span>
                            <span class="text">DJ</span>
                        </a>
                    </li>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-camera"></span>
                            <span class="text">Photographers &amp; Videographers</span>
                        </a>
                    </li>
                    <li>
                        <a href="services.html">
                            <span class="icon icon-glass"></span>
                            <span class="text">Entertainment</span>
                        </a>
                    </li>
                </ul>

            </div>
        </div>
    </section>
    <section class="content">
        <div class="container">
            <div class="home-event">
                <div class="heading">
                    <div class="icon"><em class="icon icon-heading-icon"></em></div>
                    <div class="text">
                        <h2>Events Overview</h2>
                    </div>
                    <div class="info-text">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</div>
                </div>
                <div class="row">
                    <div class="event-slider">
                        <div class="item">
                            <div class="event-box">
                                <div class="img">
                                    <a href="#">
                                        <img src="assets/images/event-img/event-img1.jpg" alt="">
                                        <span class="capsan">
                                                <span>Event Planner</span>
                                            </span>
                                    </a>
                                </div>
                                <div class="name">Event Planner</div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ype specimen book. It has survived not only five centuries,</p>
                                <a href="#">Readmore</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="event-box">
                                <div class="img">
                                    <a href="#">
                                        <img src="assets/images/event-img/event-img2.jpg" alt="">
                                        <span class="capsan">
                                                <span>Corporate Events</span>
                                            </span>
                                    </a>
                                </div>
                                <div class="name">Corporate Events</div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ype specimen book. It has survived not only five centuries,</p>
                                <a href="#">Readmore</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="event-box">
                                <div class="img">
                                    <a href="#">
                                        <img src="assets/images/event-img/event-img3.jpg" alt="">
                                        <span class="capsan">
                                                <span>Birthday Party</span>
                                            </span>
                                    </a>
                                </div>
                                <div class="name">Birthday Party</div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ype specimen book. It has survived not only five centuries,</p>
                                <a href="#">Readmore</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="event-box">
                                <div class="img">
                                    <a href="#">
                                        <img src="assets/images/event-img/event-img1.jpg" alt="">
                                        <span class="capsan">
                                                <span>Event Planner</span>
                                            </span>
                                    </a>
                                </div>
                                <div class="name">Event Planner</div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ype specimen book. It has survived not only five centuries,</p>
                                <a href="#">Readmore</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="event-box">
                                <div class="img">
                                    <a href="#">
                                        <img src="assets/images/event-img/event-img2.jpg" alt="">
                                        <span class="capsan">
                                                <span>Corporate Events</span>
                                            </span>
                                    </a>
                                </div>
                                <div class="name">Corporate Events</div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ype specimen book. It has survived not only five centuries,</p>
                                <a href="#">Readmore</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="event-box">
                                <div class="img">
                                    <a href="#">
                                        <img src="assets/images/event-img/event-img3.jpg" alt="">
                                        <span class="capsan">
                                                <span>Birthday Party</span>
                                            </span>
                                    </a>
                                </div>
                                <div class="name">Birthday Party</div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ype specimen book. It has survived not only five centuries,</p>
                                <a href="#">Readmore</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="friends-block">
        <div class="container">
            <div class="sub-title">
                <div class="icon"><em class="icon icon-heading-icon"></em></div>
                <h2>Client Say’s</h2>
                <div class="img"><img src="assets/images/heading-blackBgimg.png" alt=""></div>
            </div>
            <div id="friend_slider" class="carousel">
                <div class="item">
                    <div class="friends-info">
                        <div class="friend-img">
                            <div class="img"><img src="assets/images/user-img/friend-img.png" alt=""></div>
                            <div class="img-fream"><img src="assets/images/img-fream.png" alt=""></div>
                            <div class="name">John Doe</div>
                        </div>
                        <div class="text">
                            <p><img src="assets/images/starting-point.png" alt="" class="start-img">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem 	Ipsum has been the industry's standard dummy text ever since the 1500s, an unknown printer took a galley of type and scrambled it  type specimen book.  <img src="assets/images/ending-point.png" alt="" class="end-img"></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="friends-info">
                        <div class="friend-img">
                            <div class="img"><img src="assets/images/user-img/friend-img.png" alt=""></div>
                            <div class="img-fream"><img src="assets/images/img-fream.png" alt=""></div>
                            <div class="name">John Doe</div>
                        </div>
                        <div class="text">
                            <p><img src="assets/images/starting-point.png" alt="" class="start-img">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem 	Ipsum has been the industry's standard dummy text ever since the 1500s, an unknown printer took a galley of type and scrambled it  type specimen book.  <img src="assets/images/ending-point.png" alt="" class="end-img"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="story-block">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="success-story">
                        <h2>Success Story <a href="#"><span class="icon icon-eye"></span>View All</a></h2>
                        <div class="story-slide">
                            <div class="img"><img src="assets/images/user-img/story-img1.png" alt=""></div>
                            <div class="text">
                                <p>We have 20 years experience planning and organizing beautiful weddings and events. We have built up excellent relationships with the most professional suppliers on the coast to help with your every desire. From a small intimate gathering to a more luxurious wedding day we can help you make your Dream Wedding a reality. </p>
                                <div class="name">- Larry Cook</div>
                            </div>
                        </div>
                        <div class="story-slide">
                            <div class="img"><img src="assets/images/user-img/story-img2.png" alt=""></div>
                            <div class="text">
                                <p>We have 20 years experience planning and organizing beautiful weddings and events. We have built up excellent relationships with the most professional suppliers on the coast to help with your every desire. From a small intimate gathering to a more luxurious wedding day we can help you make your Dream Wedding a reality.</p>
                                <div class="name">- Stacy Benjamin</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="share-story">
                        <h2>Share Your Story</h2>
                        <form class="has-validation-callback">
                            <div class="input-box">
                                <input type="text" placeholder="Name" data-validation="required" data-validation-error-msg="Name cannot be blank.">
                            </div>
                            <div class="input-box">
                                <input type="text" placeholder="Email" data-validation="email" data-validation-error-msg="Incorrect e-mail address">
                            </div>
                            <div class="FileUpload">
                                <input type="file" size="24" id="BrowserHidden" onChange="getElementById('FileField').value = getElementById('BrowserHidden').value;" class="BrowserHidden"/>
                                <div class="BrowserVisible"><input type="text" id="FileField" class="FileField" placeholder="Your Photo" /></div>
                            </div>
                            <div class="input-box">
                                <textarea placeholder="Your Story"  data-validation="required" data-validation-error-msg="Story cannot be blank."></textarea>
                            </div>
                            <div class="submit-slide">
                                <input type="submit" value="Share Your Story" class="btn">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="news-view">
        <div class="container">
            <div class="heading">
                <div class="icon"><em class="icon icon-heading-icon"></em></div>
                <div class="text">
                    <h2>Latest News</h2>
                </div>
                <div class="info-text">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-8">
                    <div class="news-box">
                        <div class="row">
                            <div class="col-sm-6"><img src="assets/images/news-img/news-img1.png" alt=""></div>
                            <div class="col-sm-6">
                                <div class="text">
                                    <div class="news-title">
                                        <h3>Post with Image Here</h3>
                                        <span>Rashed kabir on 24 Feb, 2014</span>
                                    </div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <a href="#" class="btn">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="news-box style2">
                                <div class="text">
                                    <div class="news-title">
                                        <h3>Post with Image Here</h3>
                                        <span>Rashed kabir on 24 Feb, 2014</span>
                                    </div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <a href="#" class="btn">Read More</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="news-box style2">
                                <div class="text">
                                    <div class="news-title">
                                        <h3>Post with Image Here</h3>
                                        <span>Rashed kabir on 24 Feb, 2014</span>
                                    </div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <a href="#" class="btn">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-sm-12 col-md-4">
                    <div class="news-box style3">
                        <img src="assets/images/news-img/news-img2.png" alt="">
                        <div class="text">
                            <div class="news-title">
                                <h3>Post with Image Here</h3>
                                <span>Rashed kabir on 24 Feb, 2014</span>
                            </div>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <a href="#" class="btn">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="event-sponsor">
        <div class="container">
            <div class="heading">
                <div class="icon"><em class="icon icon-heading-icon"></em></div>
                <div class="text">
                    <h2>Clients </h2>
                </div>
                <div class="info-text">It has survived not only five centuries, but also the leap into electronic typesetting,</div>
            </div>
            <div class="sponsor-slider">
                <div class="item"><a href="#"><img src="assets/images/sponsor-logo/sponsor-logo1.png" alt=""></a></div>
                <div class="item"><a href="#"><img src="assets/images/sponsor-logo/sponsor-logo2.png" alt=""></a></div>
                <div class="item"><a href="#"><img src="assets/images/sponsor-logo/sponsor-logo3.png" alt=""></a></div>
                <div class="item"><a href="#"><img src="assets/images/sponsor-logo/sponsor-logo4.png" alt=""></a></div>
                <div class="item"><a href="#"><img src="assets/images/sponsor-logo/sponsor-logo1.png" alt=""></a></div>
                <div class="item"><a href="#"><img src="assets/images/sponsor-logo/sponsor-logo2.png" alt=""></a></div>
                <div class="item"><a href="#"><img src="assets/images/sponsor-logo/sponsor-logo3.png" alt=""></a></div>
                <div class="item"><a href="#"><img src="assets/images/sponsor-logo/sponsor-logo4.png" alt=""></a></div>
            </div>
        </div>
    </section>

    <?php
    include "footer.php";
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
<script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="assets/js/placeholder.js"></script>
<script type="text/javascript" src="assets/js/parsley.js"></script>
<script type="text/javascript" src="assets/js/coustem.js"></script>
<script type="text/javascript" src="assets/js/login.js"></script>

<script>

    let uri = window.location.toString();
    if (uri.indexOf("?") > 0) {
        $('#loginModal').modal('toggle');
        let clean_uri = uri.substring(0, uri.indexOf("?"));
        window.history.replaceState({}, document.title, clean_uri);
    }
</script>

</body>
</html>

