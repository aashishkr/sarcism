<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ask.aspx.cs" Inherits="Ask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Ask a Query</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/ask.css" rel="stylesheet" />
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
<body id="page-top" data-spy="scroll" style= "background-color: #e9eaed;" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" style="background-color:black;" role="navigation">
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

    <section id="ask" class="container content-section text-left">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <form action="#" method="post" runat="server">
                    <asp:TextBox runat="server" id="title" type="text" placeholder="Title for Query" CssClass="form-control" style="width:80%;margin-left:0%;height:20%;"/><br />
                    <asp:TextBox  runat="server" id="query" TextMode="Multiline" rows="5" column="10" placeholder="Enter your Query here" CssClass="form-control" style="width:80%;margin-left:0%;" /><br />
                    <select class="form-control" name="type" style="width:80%;float:left;">
                        <option>Select type of Query</option>
                        <option>Company Related</option>
                        <option>About Placements</option>
                        <option>Technical Query</option>
                        <option>General Query</option>
                    </select>
                    <br /><br /><br />
                    <asp:Button runat="server" ID="Submit" CssClass="btn btn-default btn-lg" Font-Size="Medium" BorderColor="#99ccff"  Text="Submit"/>
                </form>
            </div>
        </div>
    </section>


    <!-- Footer 
    <footer>
        <div class="container text-center" id="no_query">
            
        </div>
    </footer> -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>

    
    <!-- Custom Theme JavaScript -->
    <script src="js/Ask.js"></script>

</body>
</html>
