<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content=""/>
    <meta name="author" content="" />

    <title>SARC</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/grayscale.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />

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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse" >
                    <i class="fa fa-bars"></i>
                </button>

                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i>  <span class="light">SARC</span>
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
                  <!--  <li>
                        <a class="page-scroll" href="#contact">Gallery</a>
                    </li> -->
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
                        <h1 class="brand-heading">Student Alumni Relationship Cell</h1>
                        <p class="intro-text">Computer Science & Engineering Society<br>ISM Dhanbad</p>
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <form runat="server">
    
    <section id="about" class="container content-section text-center" style="height:100vh">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-4">
                <h2>LOGIN</h2>
                <span class="fa-stack fa-4x">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-shield fa-stack-1x text-primary"></i>
                </span><br /><br />
                    <asp:TextBox runat="server" id="email" placeholder="Email" CssClass="form-control" /><br />
                    <asp:TextBox runat="server" id="pass" TextMode="Password" placeholder="Password"  CssClass="form-control" /><br /><br />
                    <asp:Button runat="server" id="login" type="submit" Text="LOGIN" OnClick="btn_login" CssClass="btn btn-default btn-lg" />
                <br /><br />
                <a href="#download" class="btn btn-circle page-scroll">
                    <i class="fa fa-angle-double-down animated"></i>
                </a>
            </div>
        </div>
    </section>
    
    <!-- Download Section -->
    <section id="download" class="content-section text-center" style="height:100vh">
        <div class="download-section">
            <div class="col-lg-4 col-lg-offset-4">
                <h2>SignUp</h2><br />
                <div class="row">
                    <div class="form-group col-xs-6">
                        <asp:TextBox runat="server" CssClass="form-control" ID="u_name1" placeholder="First Name"/>
                    </div>
                    <div class="form-group col-xs-6">
                        <asp:TextBox runat="server" CssClass="form-control" ID="u_name2" placeholder="Last Name"/>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-xs-6">
                        <asp:TextBox runat="server" CssClass="form-control" ID="u_batch" placeholder="Passing Batch"/>
                    </div>
                    <div class="form-group col-xs-6">
                        <asp:TextBox runat="server" CssClass="form-control" ID="u_admin" placeholder="Admission Number"/>
                    </div>
                </div>
                
                <div class="row">
                    <div class="form-group col-xs-6">
                         <div class="input-group">
                            <span class="input-group-addon">Gender</span>
                            <asp:DropDownList runat="server" ID="u_gender" CssClass="form-control dropdown">
                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                <asp:ListItem >Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group col-xs-6">
                        <asp:TextBox ID="u_contact" CssClass="form-control" placeholder="Contact No" runat="server" />
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-xs-12">
                        <asp:TextBox runat="server" ID="u_email" CssClass="form-control" placeholder="Email Address" />
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-xs-12">
                        <asp:TextBox runat="server" ID="u_password" TextMode="Password" CssClass="form-control" placeholder="Password" />
                    </div>
                </div>
                <br />
                <div class="row center-block">
                    <asp:Button runat="server" ID="SignUp" Text="Submit" OnClick="btn_submit" CssClass="btn btn-default btn-lg"/>
                </div>
            </div> 
         </div>
    </section>
    </form>
    <!-- Contact Section 
    <section id="contact" class="gallery">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>GALLERY</h2>
                </div>
            </div>
    </section> -->

    <!-- Footer
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; Computer Science & Engineering Society 2016</p>
            <p>
                
            </p>
            <ul class="list-inline banner-social-buttons">
                <li>
                </li>
                <li>
                </li>
                <li>
                </li>
            </ul>
        </div>
    </footer> -->

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

