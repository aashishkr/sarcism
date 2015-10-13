<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SARC</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/grayscale.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <asp:button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </asp:button>

                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i>  <span class="light">COMPUTER SCIENCE & ENGINEERING</span> SOCIETY
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#download">SignUp</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Gallery</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">Student Alumni Web Portal</h1>
                        <p class="intro-text">Computer Science & Engineering Society<br>ISM Dhanbad</p>
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <form action="profile.aspx" method="post" runat="server">
    <!-- About Section -->
    <section id="about" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>LOGIN</h2>
                <span class="fa-stack fa-4x">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-shield fa-stack-1x text-primary"></i>
                </span><br /><br />
                    <asp:TextBox runat="server" id="username" type="email" placeholder="Username" CssClass="form-control" style="width:40%;margin-left:30%" /><br />
                    <asp:TextBox runat="server" id="pass" type="password" placeholder="Password"  CssClass="form-control" style="width:40%;margin-left:30%" /><br /><br />
                    <asp:TextBox runat="server" id="Login" type="submit" value="Login" CssClass="btn btn-default btn-lg" />
                <br /><br />
                <a href="#download" class="btn btn-circle page-scroll">
                    <i class="fa fa-angle-double-down animated"></i>
                </a>
            </div>
        </div>
    </section>

    <!-- Download Section -->
    <section id="download" class="content-section text-center">
        <div class="download-section">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>SignUp</h2><br /><br />
                    <div class="stu">
                            <asp:TextBox runat="server" id="u_name1" type="text" class="form-control left" placeholder="First Name" style="width:40%;" />
                            <asp:TextBox runat="server" id="u_name2" type="text" class="form-control right" placeholder="Last Name" style="width:40%;" />
                            <br /><br />
                            <asp:TextBox runat="server" id="f_name" type="text" class="form-control left" placeholder="Father's Name" style="width:82%;" />
                            <br /><br />
                            <asp:TextBox runat="server" id="u_batch" type="text" class="form-control left" placeholder="Batch" style="width:40%;" />
                            <asp:TextBox runat="server" id="u_admin" type="text" class="form-control right" placeholder="Admission No" style="width:40%;" />
                            <br /><br />
                            <asp:TextBox runat="server" style="float:left;margin-left:5%;font-size:18px;color:#fff;" type="radio" name="sex" value="1" />
                            <label style="float:left;margin-left:2%;font-size:18px;color:#fff;">Female</label>
                            <asp:TextBox runat="server" style="float:left;margin-left:5%;font-size:18px;color:#fff;" type="radio" name="sex" value="2" />
                            <label style="float:left;margin-left:2%;font-size:18px;color:#fff;">Male</label>
                            <br /><br />
                            <asp:TextBox runat="server" id="u_email" type="text" class="form-control left" placeholder="Email" style="width:82%;" /><br /><br />
                            <asp:TextBox runat="server" id="u_password" type="password" class="form-control left" placeholder="Password" style="width:82%;" />
                            <br /><br />
                            <asp:TextBox runat="server" id="u_mobile" type="text" class="form-control left" placeholder="Contact No" style="width:82%;" />
                            <br /><br />
                            <div class="checkbox left" style="margin-left:10%;color:#fff">
                                <asp:TextBox runat="server" id="send_updates" type="checkbox" />
                                <label for="send_updates">Send me occasional email updates</label>
                            </div><br /><br /><br /><br />
                            <asp:TextBox runat="server" id="SignUp" type="submit" value="Submit" class="btn btn-default btn-lg left" style="margin-left:25%" />
                    </div> 
                </div>
        </div>
    </section>
    </form>
    <!-- Contact Section -->
    <section id="contact" class="gallery">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>GALLERY</h2>
                </div>
            </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; Your Website 2014</p>
            <p>
                <a href="mailto:feedback@startbootstrap.com">feedback@startbootstrap.com</a>
            </p>
            <ul class="list-inline banner-social-buttons">
                <li>
                    <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                </li>
                <li>
                    <a href="https://github.com/IronSummitMedia/startbootstrap" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                </li>
                <li>
                    <a href="https://plus.google.com/+Startbootstrap/posts" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                </li>
            </ul>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/grayscale.js"></script>

</body>

</html>

