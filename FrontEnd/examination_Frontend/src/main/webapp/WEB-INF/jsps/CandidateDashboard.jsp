<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<style>



.breadcome-list {
    padding-top: 30px;
    padding-bottom: 100px;
}

.breadcome-heading .form-control,
.breadcome-heading .form-control:focus {
    border: 1px solid #ececec;
    font-size: 13px;
    height: 34px;
    color: #303030;
    padding-left: 20px;
    padding-right: 40px;
    background: rgba(255, 255, 255, .1);
    box-shadow: none;
    border-radius: 30px;
    width: 200px;
}

.breadcome-heading a {
    position: absolute;
    top: 0;
    left: 178px;
    display: block;
    height: 34px;
    line-height: 34px;
    width: 34px;
    text-align: center;
    color: #999;
}

ul.breadcome-menu {
    text-align: right;
}

ul.breadcome-menu {
    padding-top: 8px;
}

ul {
    list-style: outside none none;
    margin: 0;
    padding: 0;
}


ul.breadcome-menu li {
    font-size: 14px;
    display: inline-block;
    color: #fff;
}

ul.breadcome-menu li a {
    color: #fff;
}

ul.breadcome-menu li {
    font-size: 14px;
    display: inline-block;
    color: #fff;
}
.dashboard_header 
{
    /* background: linear-gradient(0deg, #1143a6, 30%, #1197bf 70%); */
        background: linear-gradient(0deg, #0940af, 30%, #010e15 70%);
}
.pos_relative 
{
    
    position: absolute;
    top: 196px;
        width: 100%;

}
/* dashboard card start */
/* 
.update-card {
    color: #fff;
}

.bg-c-yellow {
    background: -webkit-gradient(linear, left top, right top, from(#fe9365), to(#feb798));
    background: linear-gradient(to right, #fe9365, #feb798);
}

.align-items-end {
    -ms-flex-align: end!important;
    align-items: flex-end!important;
}

.m-b-0 {
    margin-bottom: 0;
}

.update-card .card-footer {
    background-color: transparent;
    border-top: 1px solid #fff;
}

.m-b-0 {
    margin-bottom: 0;
} */




.panel-featured-primary {
    border-color: #08c;
}

.panel-featured-left {
    border-left: 3px solid #33353f;
        border-radius: 8px;
}

.panel-body {
    background: #fdfdfd;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    border-radius: 5px;
}


.widget-summary {
    display: table;
    width: 100%;
}

.widget-summary .widget-summary-col.widget-summary-col-icon {
    width: 1%;
}

.widget-summary .widget-summary-col {
    display: table-cell;
    vertical-align: top;
    width: 100%;
}


.widget-summary .summary-icon {
    margin-right: 8px;
        margin-left: 8px;
        margin-top: 8px;
    font-size: 42px;
    font-size: 4.2rem;
    width: 60px;
    height: 60px;
    line-height: 40px;
    text-align: center;
    color: #fff;
    -webkit-border-radius: 55px;
    border-radius: 55px;
}


.widget-summary .widget-summary-col {
    display: table-cell;
    vertical-align: top;
    width: 100%;
}


.widget-summary .summary {
    min-height: 65px;
    word-break: break-all;
}


.widget-summary .summary .title {
    margin: 0;
    font-size: 14px;
    line-height: 22px;
    color: #333;
    font-weight: 500;
}


.widget-summary .summary .info {
    font-size: 16px;
    line-height: 30px;
}

.widget-summary .summary .amount {
    margin-right: .2em;
    font-size: 16px;
    font-weight: 600;
    color: #333;
    vertical-align: middle;
}


.widget-summary .summary .info span {
    vertical-align: middle;
}
.summary-icon  i
{
    font-size: 35px;  
}

.widget-summary .summary-footer {
    padding: 8px 8px 8px;
    border-top: 1px dotted #ddd;
    text-align: right;
        font-size: 12px;
}

.bg-primary {
    background: #08c;
}
/* dashboard card end */



</style>




<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


 <div class="row">
        <!-- <div class="col-md-12">
            <h4>Dashboard</h4>
        </div>         -->
    <!-- dashboard header start -->
    <div class="col-md-12 p-0">
    <div class="breadcome-area">
        <div class="container-fluid">
            <div class="row dashboard_header">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="breadcome-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <div class="breadcome-heading">
                                    <form role="search" class="">
                                        <input type="text" placeholder="Search..." class="form-control">
                                        <a href="">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <ul class="breadcome-menu">
                                    <li>
                                        <a href="#">Home</a>
                                        <span class="bread-slash">/</span>
                                    </li>
                                    <li>
                                        <span class="bread-blod">Dashboard</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- dashboard header end -->
  <div class="pos_relative">
      <div class="col-md-12">
    <div class="row">                 
    <div class="col-md-3 col-lg-3 col-xl-3">
    <section class="panel panel-featured-left panel-featured-primary">
        <div class="panel-body">
            <div class="widget-summary">
                <div class="widget-summary-col widget-summary-col-icon">
                    <div class="summary-icon bg-primary">
                        <i class="fa fa-life-ring"></i>
                    </div>
                </div>
                <div class="widget-summary-col">
                    <div class="summary">
                        <h4 class="title">Support Questions</h4>
                        <div class="info">
                            <strong class="amount">1281</strong>
                            <span class="text-primary">(14 unread)</span>
                        </div>
                    </div>
                    <div class="summary-footer">
                        <a href="/" class="text-muted text-uppercase">(view all)</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>


    <div class="col-md-3 col-lg-3 col-xl-3">
        <section class="panel panel-featured-left panel-featured-primary">
            <div class="panel-body">
                <div class="widget-summary">
                    <div class="widget-summary-col widget-summary-col-icon">
                        <div class="summary-icon bg-primary">
                            <i class="fa fa-life-ring"></i>
                        </div>
                    </div>
                    <div class="widget-summary-col">
                        <div class="summary">
                            <h4 class="title">Support Questions</h4>
                            <div class="info">
                                <strong class="amount">1281</strong>
                                <span class="text-primary">(14 unread)</span>
                            </div>
                        </div>
                        <div class="summary-footer">
                            <a href="/" class="text-muted text-uppercase">(view all)</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    
    <div class="col-md-3 col-lg-3 col-xl-3">
        <section class="panel panel-featured-left panel-featured-primary">
            <div class="panel-body">
                <div class="widget-summary">
                    <div class="widget-summary-col widget-summary-col-icon">
                        <div class="summary-icon bg-primary">
                            <i class="fa fa-life-ring"></i>
                        </div>
                    </div>
                    <div class="widget-summary-col">
                        <div class="summary">
                            <h4 class="title">Support Questions</h4>
                            <div class="info">
                                <strong class="amount">1281</strong>
                                <span class="text-primary">(14 unread)</span>
                            </div>
                        </div>
                        <div class="summary-footer">
                            <a href="/" class="text-muted text-uppercase">(view all)</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    
    <div class="col-md-3 col-lg-3 col-xl-3">
        <section class="panel panel-featured-left panel-featured-primary">
            <div class="panel-body">
                <div class="widget-summary">
                    <div class="widget-summary-col widget-summary-col-icon">
                        <div class="summary-icon bg-primary">
                            <i class="fa fa-life-ring"></i>
                        </div>
                    </div>
                    <div class="widget-summary-col">
                        <div class="summary">
                            <h4 class="title">Support Questions</h4>
                            <div class="info">
                                <strong class="amount">1281</strong>
                                <span class="text-primary">(14 unread)</span>
                            </div>
                        </div>
                        <div class="summary-footer">
                            <a href="/" class="text-muted text-uppercase">(view all)</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>


        </div>
        </div>
        </div>
    </div>



</body>
</html>