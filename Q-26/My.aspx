<%@ Page Language="C#" AutoEventWireup="true" CodeFile="My.aspx.cs" Inherits="My" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>My Queries</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/My.css" rel="stylesheet" />
    <link href="css1/bootstrap.css" rel="stylesheet" />
    <link href="css1/style.min.css" rel="stylesheet" />


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

<body id="page-top" data-spy="scroll" style="background-color: #e9eaed;" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" style="background-color: black;" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <span class="light">Query Page</span>
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
                        <a href="My.aspx">My Queries</a>
                    </li>
                    <li>
                        <a href="All.aspx">All Queries</a>
                    </li>
                    <li>
                        <a href="Ask.aspx">Ask a Query</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Intro Header --> 
    <header class="intro">
    </header>

    <!-- About Section -->
    <div class="dropdown">
    <button  class="btn btn-default dropdown-toggle" id="Filter" data-toggle="dropdown">Filter
    <span class="caret" ></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Company Related</a></li>
        <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">About Placements</a></li>
        <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Technical Query</a></li>
        <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">General Query</a></li>
    </ul>
  </div>
     <section class="container content-section content-center" id="query">
        <div class="row">
                        <div class="col-lg-10">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>Heading</h5>
                                </div>
                                <div class="ibox-content">
                                    <div>
                                        <div class="pull-right text-right">
                                            <br/>
                                        </div>
                                        <h4>L1<br />L2<br />L3<br />L4
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
            </div>
    </section>

    <!-- Footer -->
    <footer>
        <!--
        <div class="container text-center" id="no_query">
            <p>You have not posted any query.</p>
        </div> -->
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>

    
    <!-- Custom Theme JavaScript -->
    <script src="js/grayscale_query.js"></script>

</body>

</html>
