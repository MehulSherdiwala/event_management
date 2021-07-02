<?php
require_once 'model/autoload.php';
if (!isset($_SESSION['user_id'])){
    if (!isset($_SESSION['vendor_id']))
	{
		header("Location: index.php");
	}
}

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
<!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
    <link rel="stylesheet" href="assets/css/perfect-scrollbar.min.css">
    <link href="assets/css/docs.css" rel="stylesheet"><!--  template structure css -->
    
    <!-- Used Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Domine:400,700%7COpen+Sans:300,300i,400,400i,600,600i,700,700i%7CRoboto:400,500" rel="stylesheet"> 
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <style>
        .page-box {
            background: #fff none repeat scroll 0 0;
            margin-top: 30px;
            padding: 20px;
            box-shadow: 1px 0 3px rgba(0, 0, 0, 0.1);

        }
        .ps-container>.ps-scrollbar-y-rail>.ps-scrollbar-y {
            background-color: rgba(180, 180, 180, 0.93);
            width: 4px;
            visibility: hidden;
            -webkit-transition: all 0.4s ease 0s;
            transition: all 0.4s ease 0s
        }

        .ps-container:hover .ps-scrollbar-y-rail>.ps-scrollbar-y {
            visibility: visible !important
        }

        .ps-container:hover>.ps-scrollbar-y-rail:hover {
            background-color: transparent
        }

        .ps-container.ps-active-x>.ps-scrollbar-x-rail,
        .ps-container.ps-active-y>.ps-scrollbar-y-rail {
            background-color: transparent;
            right: 1px !important
        }
        .page-box li{
            list-style-type: none;
        }
        .page-box a{
            transition: all 0.4s ease 0s;
            color: inherit;
        }
        .ps-container{
            overflow: hidden;
            touch-action:none;
        }
        .chat-search-form {
            background: #f9f9f9 none repeat scroll 0 0;
            padding: 20px;
        }

        .chat-search-form>form {
            border: 1px solid #ddd;
            height: 40px;
            position: relative;
            width: 100%;
        }

        .chat-search-form form input {
            border: medium none;
            color: #212121;
            height: 100%;
            left: 0;
            padding: 5px 65px 5px 10px;
            position: absolute;
            width: 100%;
        }

        .chat-search-form form button {
            background: transparent none repeat scroll 0 0;
            border: medium none;
            height: 100%;
            position: absolute;
            right: 0;
            width: 20%;
        }

        .chat-list-body ul.chat-list li a {
            padding: 10px;
            border-bottom: 1px solid rgba(97, 106, 120, 0.07);
            display: block
        }

        .chat-list-body ul.chat-list li a:hover {
            background: #efefef none repeat scroll 0 0
        }

        .chat-avatar-img {
            float: left;
            margin-right: 10px;
            width: 50px;
        }

        .chat-avatar-img>img {
            border-radius: 50%;
            width: 100%;
        }

        .chat-about {
            /*margin-top: 10px;*/
            overflow: hidden;
        }

        .chat-about>h4 {
            color: #333;
            font-size: 14px;
            text-transform: capitalize;
            margin: 0;
        }

        .chat-list-body ul {
            height: 360px;
            margin-top: 20px;
        }

        .chat-list {
            position: relative
        }

        .chat-about small {
            text-transform: capitalize
        }

        .online {
            color: #16d39a
        }

        .away {
            color: #faa64b
        }

        .busy {
            color: #ef5350
        }

        .chat-board-right {
            background-color: #F2F7FB;
            display: table;
            height: 100%;
            table-layout: fixed;
            width: 100%;
        }

        .chat-board-header {
            background-color: #fff;
            border: 1px solid #eaeaea;
            padding: 10px 15px;
        }

        .user-img {
            display: inline-block;
            position: relative;
        }

        .chat-user-img {
            width: 50px;
            margin-right: 10px
        }

        .chat-user-img img {
            border-radius: 50%;
            width: 100%;
        }

        .user-info h4 {
            color: #333;
            font-size: 15px;
            text-transform: capitalize;
            margin: 0;
        }

        .user-info small {
            text-transform: capitalize
        }

        .user-info {
            margin-top: 7px
        }

        .chat-board-right .navbar {
            margin-bottom: 0;
        }

        .nav.navbar-nav.pull-right.custom-menu>li>a:hover,
        .nav.navbar-nav.pull-right.custom-menu>li>a:focus {
            background: transparent !important
        }

        .nav.navbar-nav.pull-right.custom-menu>li>a {
            font-size: 18px;
            color: #1CD2C9
        }

        .nav.navbar-nav.pull-right.custom-menu>li>ul {
            left: auto;
            right: 0
        }

        .chat-box-inner .chat-list {
            padding: 20px;
        }

        .chat-box-inner .chat-list li {
            list-style: outside none none;
            margin-top: 30px;
        }

        .chat-img {
            display: inline-block;
            vertical-align: top;
            width: 45px;
        }

        .chat-img img {
            border-radius: 50%;
            width: 100%;
        }

        .chat-content {
            display: inline-block;
            padding-left: 15px;
            max-width: calc(100% - 220px);
        }

        .chat-text {
            background: #fff none repeat scroll 0 0;
            color: #333;
            padding: 10px;
            border-radius: 10px
        }

        .chat-time {
            text-align: center;
        }

        .chat-box-inner .chat-list li.chat-list-right {
            text-align: right;
        }

        .chat-list-right .chat-text {
            text-align: left;
            background: #f15b22d1 none repeat scroll 0 0;
            color: #fff
        }

        .chat-box-inner>ul {
            height: 320px
        }

        .chat-list-left{
            border: 1px solid #e2e2e2;
        }

        .attach-icon {
            display: table-cell;
            overflow: hidden;
            position: relative;
            text-align: right;
            vertical-align: middle;
            width: 30px;
        }

        .attach-icon p i {
            margin-right: 5px;
            font-size: 22px;
            margin-top: 7px
        }

        .attach-icon>input[type="file"] {
            cursor: pointer;
            height: 100%;
            left: 0;
            opacity: 0;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
            position: absolute;
            top: 0;
            width: 100%;
        }

        .chat-footer {
            background-color: #fff;
            border: 1px solid #eaeaea;
            padding: 10px;
        }

        .message-bar {
            display: table;
            height: 44px;
            position: relative;
            width: 100%;
        }

        .message-bar .message-bar-inner {
            display: table-row;
            height: 100%;
            padding: 0 8px;
            width: 100%;
        }

        .message-bar .message-text-area {
            display: table-cell;
        }

        .message-text-area form {
            border-collapse: separate;
            display: table;
            height: 44px;
            position: relative;
            width: 100%;
        }

        .message-text-area form textarea {
            background-color: #fff;
            box-shadow: none;
            color: #333;
            border: medium none;
            display: block;
            height: 100%;
            margin: 0;
            padding: 6px 12px;
            position: absolute;
            resize: none;
            width: 93%;
        }

        .message-text-area button {
            color: #1CD2C9;
            background: transparent none repeat scroll 0 0;
            border: medium none;
            font-size: 19px;
            height: 100%;
            position: absolute;
            right: 0;
            width: 7%;
        }

        .chat-board-header .nav.navbar-nav.pull-right.custom-menu>li>a[aria-expanded="false"]:before,
        .chat-board-header .nav.navbar-nav.pull-right.custom-menu>li>a[aria-expanded="true"]:before {
            display: none
        }

        .msg-time{
            color: rgba(97, 97, 97, 0.75);
            float: right;
            margin-top: 5px;
            padding-left: 5px;
            font-size: 10px;
        }
        .chat-list-right .msg-time{
            color: rgba(255, 255, 255, 0.76);
        }

    </style>
</head>

<body class="inner-page">
    <div class="page">
        <?php
        include 'header.php';
        ?>
        <div class="dashboard-banner">
            <div class="container">
                <h2>Chat</h2>
            </div>
        </div>
        <div class="content" style="margin-top: -5%">
            <div class="container">

                <!-- Chatting Row Start -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-box">
                            <div class="row">
                                <div class="col-md-4 col-sm-5">
                                    <div class="chat-list-left">
                                        <div class="chat-search-form">
                                            <form>
                                                <input type="search" placeholder="Search Contact" >
                                                <button type="submit" ><i class="fa fa-search"></i></button>
                                            </form>
                                        </div>
                                        <div class="chat-list-body">
                                            <ul class="chat-list" id="user_list">

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-sm-7 hidden" id="hideChatBox">
                                    <div class="chat-board-right">
                                        <div class="chat-board-header">
                                            <div class="navbar">
                                                <div class="user-details-nav">
                                                    <div class="chat-user-details">
                                                        <div class="pull-left chat-user-img">
                                                            <a href="javasccript:void(0);">
                                                                <img src="assets/images/user-img.jpg    " alt="">
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="user-info pull-left">
                                                        <a href="javasccript:void(0);" title="Mike Litorus">
                                                            <h4 id="userName">Mike Litorus</h4>
                                                        </a>
                                                        <small class="online" id="status">online</small>
                                                    </div>
                                                </div>
<!--                                                <ul class="nav navbar-nav pull-right custom-menu">-->
<!--                                                    <li>-->
<!--                                                        <a href="javasccript:void(0);"><i class="fa fa-phone" aria-hidden="true"></i></a>-->
<!--                                                    </li>-->
<!--                                                    <li>-->
<!--                                                        <a href="javasccript:void(0);"><i class="fa fa-video-camera" aria-hidden="true"></i></a>-->
<!--                                                    </li>-->
<!--                                                    <li class="dropdown">-->
<!--                                                        <a href="chatting.html" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-cog"></i></a>-->
<!--                                                        <ul class="dropdown-menu">-->
<!--                                                            <li><a href="javascript:void(0)">Delete Conversations</a></li>-->
<!--                                                            <li><a href="javascript:void(0)">Settings</a></li>-->
<!--                                                        </ul>-->
<!--                                                    </li>-->
<!--                                                </ul>-->
                                            </div>
                                        </div>
                                        <div class="chat-board-content">
                                            <div class="chat-box-wrapper">
                                                <div class="chat-box-inner">
                                                    <ul class="chat-list" id="chats">

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="chat-footer">
                                            <div class="message-bar">
                                                <div class="message-bar-inner">
                                                    <div class="attach-icon">
                                                        <p>
                                                            <i class="fa fa-paperclip"></i>
                                                        </p>
                                                        <input type="file">
                                                    </div>
                                                    <div class="message-text-area">
                                                        <form>
                                                            <textarea placeholder="Type message..." id="msg"></textarea>
                                                            <input type="hidden" id="user_id" value="<?= (($_SESSION['user_id']) ?? 0) ?>">
                                                            <input type="hidden" id="vendor_id" value="<?= (($_SESSION['vendor_id']) ?? 0) ?>">
                                                            <input type="hidden" id="sender" value="<?= (isset($_SESSION['user_id']) ? 0 : 1) ?>">
                                                            <input type="hidden" id="chat_date">
                                                            <button type="button" id="send" ><i class="fab fa-2x fa-telegram-plane"></i></button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Chatting Row -->
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
    <script type="text/javascript" src="assets/js/jquery-perfect-scrollbar.min.js"></script>
    <script type="text/javascript" src="assets/js/placeholder.js"></script>
    <script type="text/javascript" src="assets/js/login.js"></script>

    <?php
    if (isset($_GET['vendor_id'])){
        ?>
        <script>
            $("#vendor_id").val(<?= $_GET['vendor_id'] ?>);
            $("#hideChatBox").removeClass("hidden");
        </script>
        <?php
    }
    ?>
    <script>
        $(".chat-list").perfectScrollbar();
        $("#chats").animate({ scrollTop: $('#chats').prop("scrollHeight")}, 0);


        $("#send").on('click',function () {
            let msg = $("#msg").val();
            $("#msg").val('');
            let user_id = $("#user_id").val();
            let vendor_id = $("#vendor_id").val();
            let sender = $("#sender").val();

            let today = new Date();
            let hour = today.getHours();
            let minute = today.getMinutes();
            let prepand = (hour >= 12)? " PM ":" AM ";
            hour = (hour >= 12)? hour - 12: hour;
            if (hour===0 && prepand===' PM ')
            {
                hour=12;
                prepand=' PM';
            }
            if (hour===0 && prepand===' AM ')
            {
                hour=12;
                prepand=' AM';
            }
            let html = '';

            html +='<li class="chat-list-right">';
            if ($("#chat_date").val() !== "Today"){
                html += '<div class="chat-time"><span>Today</span></div>';
                $("#chat_date").val("Today");
            }
            html +='<div class="chat-content">';
            html +='<div class="chat-text">';
            html += msg;
            html += '<span class="msg-time">';
            html += hour+':'+minute+prepand;
            html += '</span>';
            html +='</div>';
            html +='<div class="chat-action">seen</div>';
            html +='</div>';
            html +='</li>';

            $("#chats").append(html);
            $("#chats").animate({ scrollTop: $('#chats').prop("scrollHeight")}, 1000);
            $.ajax({
                url:'model/chat.php?send_msg=true',
                method:'post',
                data:{
                    user_id:user_id,
                    vendor_id:vendor_id,
                    msg:msg,
                    sender:sender
                }
            });
        });
        get_chat();

        function get_chat(){
            let vendor_id = $("#vendor_id").val();
            let user_id = $("#user_id").val();
            let sender = $("#sender").val();

            $.ajax({
                url:'model/chat.php?get_chat=true',
                method: 'post',
                data:{
                    vendor_id:vendor_id,
                    user_id:user_id,
                    sender:sender,
                },
                success:function (res) {
                    let obj = JSON.parse(res);
                    let html ='';
                    let chat_date = '';
                    for (key in obj) {
                        if (obj[key].sender == sender) {
                            html += '<li class="chat-list-right">';
                            if (chat_date != obj[key].chat_date){
                                chat_date = obj[key].chat_date;
                                html += '<div class="chat-time"><span>' + chat_date + '</span></div>';
                            }
                            html += '<div class="chat-content">';
                            html += '<div class="chat-text">';
                            html += obj[key].message;
                            html += '<span class="msg-time">';
                            html += obj[key].datetime;
                            html += '</span>';
                            html += '</div>';
                            html += '<div class="chat-action">seen</div>';
                            html += '</div>';
                            html += '</li>';
                        } else {
                            html += '<li>';
                            if (chat_date != obj[key].chat_date){
                                chat_date = obj[key].chat_date;
                                html += '<div class="chat-time"><span>' + chat_date + '</span></div>';
                            }
                            html += '<div class="chat-content">';
                            html += '<div class="chat-text">';
                            html += obj[key].message;
                            html += '<span class="msg-time">';
                            html += obj[key].datetime;
                            html += '</span>';
                            html += '</div>';
                            html += '</div>';
                            html += '</li>';
                        }
                    }
                    $("#chats").html(html);
                    $("#chat_date").val(chat_date);

                    $("#chats").animate({scrollTop: $('#chats').prop("scrollHeight")} , 0);
                }
            });

        }

        getUsers();
        function getUsers(){
            let vendor_id = $("#vendor_id").val();
            let user_id = $("#user_id").val();
            let sender = $("#sender").val();

            $.ajax({
                url: 'model/chat.php?get_users=true' ,
                method: 'post' ,
                data: {
                    vendor_id: vendor_id ,
                    user_id: user_id ,
                    sender: sender ,
                } ,
                success: function (res) {
                    let html = '';
                    let obj = JSON.parse(res);
                    for (const key in obj) {
                        html += '<li class="clearfix">\n'+
                                '   <a  href="javascript:void(0)" class="user" data-id="'+ obj[key].user_id +'">\n'+
                                '   <div class="chat-avatar-img">\n'+
                                '   <img src="assets/images/user-img.jpg" alt="avatar"/>\n'+
                                '   </div>\n'+
                                '   <div class="chat-about">\n'+
                                '   <h4> '+ obj[key].user_name +' <span class="badge" style="background-color: #0d9dc3"></span></h4>\n'+
                                '   <small class="status online">Online</small>\n'+
                                '   </div>\n'+
                                '   </a>\n'+
                                '   </li>';
                    }
                    $("#user_list").html(html);

                    $(".user").on('click', function (){
                        let id = $(this).data('id');
                        let sender = $("#sender").val();
                        if (sender == 0){
                            $("#vendor_id").val(id);
                        } else {
                            $("#user_id").val(id);
                        }
                        $("#hideChatBox").removeClass("hidden");

                        $.ajax({
                            url: 'model/chat.php?get_user_detail=true' ,
                            method: 'post',
                            data:{
                                id:id,
                                sender:sender
                            },
                            success:function (res) {
                                let obj = JSON.parse(res);

                                $("#userName").text(obj.user_name);
                                $("#status").attr('class','online').text('Online');
                                get_chat();
                                $("[data-id='" + id + "'] .badge").text('');
                            }
                        })
                    })
                }
            });
        }

        function getMsg(){
            let vendor_id = $("#vendor_id").val();
            let user_id = $("#user_id").val();
            let sender = $("#sender").val();

            $.ajax({
                url: 'model/chat.php?get_msg=true' ,
                method:'post',
                data:{
                    vendor_id:vendor_id,
                    user_id:user_id,
                    sender:sender
                },
                success:function (res) {
                    if(res !== '') {
                    console.log(res !== '');
                        let obj = JSON.parse(res);
                        let html = '';

                        for (k in obj) {
                            html += '<li>';
                            if ($("#chat_date").val() !== "Today"){
                                html += '<div class="chat-time"><span>Today</span></div>';
                                $("#chat_date").val("Today");
                            }
                            html += '<div class="chat-content">';
                            html += '<div class="chat-text">';
                            html += obj[k].message;
                            html += '<span class="msg-time">';
                            html += obj[k].datetime;
                            html += '</span>';
                            html += '</div>';
                            html += '</div>';
                            html += '</li>';
                        }
                        $("#chats").append(html);
                        $("#chats").animate({scrollTop: $('#chats').prop("scrollHeight")} , 1000);
                    }
                }
            })

        }
        function unseen(){
            let user_id = $("#user_id").val();
            let vendor_id = $("#vendor_id").val();
            let sender = $("#sender").val();

            // let from = [];
            // $(".user").each(function () {
            //     if($(this).data('user') != user_id) {
            //         from.push($(this).data('user'))
            //     }
            // });

            $.ajax({
                url: 'model/chat.php?unseen=true',
                method: 'post',
                data:{
                    user_id     :user_id,
                    vendor_id   :vendor_id,
                    sender      : sender
                },
                success:function (res) {
                    if (res !== '') {
                        let obj = JSON.parse(res);

                        for (let key in obj) {
                            $("[data-id='" + obj[key].id + "'] .badge").text(obj[key].unseen);
                        }
                    }
                }
            })

        }

        setInterval(function () {
            getUsers();
            getMsg();
            unseen();
        },1000);

        $('#msg').keydown(function (e) {

            if (e.ctrlKey && e.keyCode == 13) {
                $("#send").trigger('click');
            }
        });
    </script>

</body>
</html>
