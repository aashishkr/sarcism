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
                        <input class="form-control" id="u_name1" placeholder="First Name"/>
                    </div>
                    <div class="form-group col-xs-6">
                        <input class="form-control" id="u_name2" placeholder="Last Name"/>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-xs-6">
                        <input class="form-control" id="u_batch" placeholder="Passing Batch"/>
                    </div>
                    <div class="form-group col-xs-6">
                         <div class="input-group">
                            <span class="input-group-addon">Gender</span>
                            <asp:DropDownList runat="server" ID="u_gender" CssClass="form-control dropdown">
                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    
                </div>
                
                <div class="row">
                    <div class="form-group col-xs-12">
                        <input id="u_contact" class="form-control" placeholder="Contact No" />
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-xs-12">
                        <input id="u_admissionNumber" class="form-control" placeholder="Your Admission Number" />
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-xs-12">
                        <input runat="server" id="u_email" class="form-control" placeholder="Email Address" />
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-xs-6">
                        <input id="u_password" type="password" class="form-control" placeholder="Password" oninput="checkPasswordSame()" />
                    </div>
                    <div class="form-group col-xs-6">
                        <input id="u_confirmPassword" type="password" class="form-control" placeholder="Confirm Password" oninput="checkPasswordSame()" />
                    </div>
                </div>
                <br />
                <div class="row center-block">
                    <input type="button" onclick="createNewUser()" class="btn btn-default btn-lg" value="Sign Up" />
                </div>
            </div> 
         </div>
    </section>
    </form>

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

    <script>
        function checkPasswordSame()
        {
            var password = document.getElementById("u_password");
            var confirmPassword = document.getElementById("u_confirmPassword");

            if(password.value != confirmPassword.value)
            {
                confirmPassword.classList.add("btn-danger");
            }
            else
            {
                confirmPassword.classList.remove("btn-danger");
                confirmPassword.classList.add("btn-success");
            }
        }
        function createNewUser()
        {
            var emailIdRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            var phoneNumberRegex = new RegExp("^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$");

            var firstName = document.getElementById("u_name1");
            var lastName = document.getElementById("u_name2");
            var emailId = document.getElementById("u_email");
            var contact = document.getElementById("u_contact");
            var batch = document.getElementById("u_batch");
            var password = document.getElementById("u_password");
            var confirmPassword = document.getElementById("u_confirmPassword");
            var admissionNumber = document.getElementById("u_admissionNumber");
            var flag = true;

            if (password.value != confirmPassword.value)
                flag = false;


            if (firstName.value.length == 0 || lastName.value.length == 0 || password.value.length == 0 || emailId.value.length == 0 || batch.value.length == 0 || admissionNumber.value.length == 0)
            {
                flag = false;
                alert("Some values are empty");
            }


            if (!emailIdRegex.test(emailId.value))
            {
                emailId.classList.add("btn-danger");
                flag = false;
            }

                
            if (!phoneNumberRegex.test(contact.value))
            {
                contact.classList.add("btn-danger");
                flag = false;
            }

            if (flag == true)
            {
                var json = {};
                json = {
                    firstName: firstName.value,
                    lastName: lastName.value,
                    emailId: emailId.value,
                    password: password.value,
                    contact: contact.value,
                    gender: document.getElementById("u_gender").options[document.getElementById("u_gender").selectedIndex].text,
                    batch: batch.value,
                    admissionNumber: admissionNumber.value
                }

                $.ajax({
                    type: "POST",
                    url: "index.aspx/CreateNewUser",
                    data: JSON.stringify(json),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data, response) {
                        var data = data[Object.keys(data)[0]];
                        if (data == "true") {
                            alert("You have successfully signed up");
                            window.location.href = "editprofile.aspx";
                        }
                        else {
                            alert(data);
                        }
                    }
                })
            }

            
        }
    </script>

</body>

</html>

