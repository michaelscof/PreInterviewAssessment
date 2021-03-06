﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start_Page.aspx.cs" Inherits="IT_SOLUTIONS.Start_Page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>IT Solutions</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><i class="glyphicon glyphicon-education"></i>IT Solutions</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="p" href="#">Register</a>
                    </li>
                    <li>
                        <a href="#">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <header id="myCarousel" class="carousel slide">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url(../../project%20pics/Office-Wallpaper.jpg)"></div>
                <div class="carousel-caption">
                    <h2>India's Largest Science Graduates Community.</h2>
                    <br/><br/>
                    <p style="font-weight:400;font-size:24px">Aspiring for a career in IT? 
                    Join the 1.5 lakh science student community on IT Solutions.</p>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url(../../project%20pics/Good-Office-Wallpapers.jpg)"></div>
                <div class="carousel-caption">
                    <h2>Learn Programming Online.</h2>
                    <br/><br/>
                    <p style="font-weight:400;font-size:24px">Have you always wanted to code but didn't knew where to start? Join thousands of your peers who are learning how to code on Codeground,an online programming tutor on Java.</p>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url(../../project%20pics/office-windows-8-1920x1080-wallpaper.jpg)"></div>
                <div class="carousel-caption">
                    <h2>Robotics,UAVs,3D Printing...</h2>
                    <br/><br/>
                    <p style="font-weight:400;font-size:24px">Augmented reality,computer vision,iOS and Android apps,drones,Internet of things,and many more cutting edge technologies. Do you dream of building cool products with these technologies? Do you want to find out about these opprotunities for science graduates in IT Solutions.</p>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" align="center">
                    IT Solutions- Join, Learn, Get Hired
                </h1>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-3">
                        <h3><i class="glyphicon glyphicon-user"></i> 1.5 Lakh science students on IT Solutions Platform</h3>
                        <p style="font-size:18px;font-weight:300">Are you a science graduate aspiring for a career in IT? 
                    Join the 1.5 lakh science student community on IT Solutions.</p>
                    </div>
            <div class="col-lg-4 col-md-3 col-sm-3">
                        <h3><i class="glyphicon glyphicon-education"></i> 5,000 science colleges enrolled</h3>
                        <p style="font-size:18px;font-weight:300">
                         Nation-wide footprints among science colleges.</p>
                    </div>
            <div class="col-lg-4 col-md-3 col-sm-3">
                        <h3><i class="glyphicon glyphicon-book"></i> 20K learning resources available</h3>
                        <p style="font-size:18px;font-weight:300">
                        Focus on job oriented skills.</p>
                    </div>
                    <div class="clearfix visible-lg"></div>
                    <div class="col-lg-4 col-md-3 col-sm-3">
                        <h3><i class="glyphicon glyphicon-flag"></i> 2,000 offers to be grabbed</h3>
                        <p style="font-size:18px;font-weight:300">India's largest recruiter of fresh science talent.</p>
                    </div>
           			 <div class="col-lg-4 col-md-3 col-sm-3">
                        <h3><i class="glyphicon glyphicon-globe"></i> 6,000 success stories</h3>
                        <p style="font-size:18px;font-weight:300">
                         Strong network of 6,000+ seniors who joined IT solutions through this platform and are now pursuing successful global careers in IT.</p>
                    </div>
            <div class="col-lg-4 col-md-3 col-sm-3">
                        <h3><i class="glyphicon glyphicon-calendar"></i> 99 days left for the final selection stage</h3>
                        <p style="font-size:18px;font-weight:300">
                        Countdown to the interview stage has begun.</p>
                    </div>
                    <div class="col-lg-6">
                    <br/>
                    <br/>
                    <asp:Button runat="server" CssClass="btn btn-lg btn-success" style="width:80%" ID="btnRegister" />Register Now</div>
                    <div class="col-lg-6">
                    <br/>
                    <br/>
                    <asp:Button runat="server" CssClass="btn btn-lg btn-warning" style="width:80%" ID="btnLogin" />Login</div>
            </div>
        </div>
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p align="center" style="font-weight:300;font-size:18px">Copyright &copy; IT Solutions,2016</p>
                </div>
            </div>
        </footer>

    </div>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $('.carousel').carousel({
            interval: 2500
        })
    </script>    
    </div>
    </form>
</body>
</html>
