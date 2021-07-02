<?php
require_once 'model/autoload.php';
if (!isset($_SESSION['user_id'])){
    header("Location: index.php?trigger=true");
}
$book = new Book();

$addToCart = $book->addToCart($_SESSION['user_id']);

//echo "<pre>";
//print_r ($addToCart);
//echo "</pre>";
//die();
?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from design.dev.drcsystems.ooo:8084/themeforest/event_planning/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2020 19:16:50 GMT -->
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
    <link href="assets/css/datepicker.css" rel="stylesheet" /><!-- Date picker css -->
    <link href="assets/css/loader.css" rel="stylesheet"><!-- Loader Box css -->
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/all.min.css">
    <link href="assets/css/docs.css" rel="stylesheet"><!--  template structure css -->
    
    <!-- Used Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Domine:400,700%7COpen+Sans:300,300i,400,400i,600,600i,700,700i%7CRoboto:400,500" rel="stylesheet"> 
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.assets/js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <style>
        table tr{
            color: #464141;
            font-weight: 600;
        }
        table tr td:nth-last-child(1){
            width: 50px;
        }
        .padding{
            padding-bottom: 15px;
        }
        .banner{
            min-height: 400px;
        }
        .banner .container{
            margin-top: 50px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
        }
    </style>


</head>
    
<body class="inner-page">
    <div class="page">
       	<!--<div id="loader-wrapper">
			<div id="loader"><img src="assets/images/loader.gif" alt=""></div>
			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
		</div>-->

        <?php
            include 'header.php';
        ?>

        <section class="banner">
            <div class="container">

            <h1 class="text-center padding">Add to Cart</h1>
                <table class="table table-striped table-bordered">
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
                    ?>

                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4"></td>
                            <td>
                                <a href="book_step1.php?cart=true" class="btn btn-sm ">Book Now</a>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </section>
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
    <script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="assets/js/placeholder.js"></script>
    <script type="text/javascript" src="assets/js/coustem.js"></script>

    <script>
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

