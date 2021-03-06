﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="profile" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title ID="u_name"></title>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>

    <!-- Morris -->
    <link href="css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet"/>

    <!-- Gritter -->
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet"/>

    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body>
    <form runat="server">
        <div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                        <asp:Image AlternateText="Image" CssClass="img-circle" runat="server" ID="userImageThumbnail" Width="55"/>
                             </span>
                        <a href="profile.aspx">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><asp:Label ID="user_name" runat="server" ></asp:Label></strong>
                             </span> </span> </a>
            
                    </div>
                    <div class="logo-element">
                        SARC
                    </div>
                </li>
                <li>
                    <a href="homepage.aspx" ><i class="fa "></i> <span class="nav-label">Home</span> </a>
                </li>
                <li>
                    <asp:LinkButton runat="server" OnClick="GoToProfilePage"><i class="fa "></i> <span class="nav-label">View Profile</span></asp:LinkButton>
                </li>
                <li>
                    <a href="editprofile.aspx"><i class="fa "></i> <span class="nav-label">Edit Profile</span> </a>
                </li>
                <li>
                    <a href="users.aspx"><i class="fa "></i> <span class="nav-label">Users</span> </a>
                </li>
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to SARC</span>
                </li>                
                <li>
                    <asp:LinkButton runat="server" OnClick="ClearSessionVariables">
                            <i class="fa fa-sign-out"></i> Log out
                        </asp:LinkButton>
                </li>
            </ul>

        </nav>
        </div>
        <asp:ScriptManager runat="server" EnablePartialRendering="true" />
        <div class="row  border-bottom white-bg dashboard-header ">
                    <div class="col-sm-3">
                        <h2>Welcome <asp:Label runat="server" ID="user_name1" ></asp:Label></h2>
                    </div>
                        <div class="col-lg-10">
                            <asp:UpdatePanel runat="server">
                                <ContentTemplate>
                                    <asp:Textbox runat="server"  type="text" placeholder="What's on your mind..." CssClass="form-control" TextMode="MultiLine" ID="NewFeed"/><br />
                                    <script type="text/javascript">
                                        function ShowHideDiv() {
                                            var choice = document.getElementById("mailTo");
                                            var bch = document.getElementById("batchYr");
                                            bch.style.display = choice.value == "Y" ? "block" : "none";
                                        }
                                        
                                    </script>
                                    <asp:DropDownList runat="server" ID="postType" CssClass="form-control dropdown" style="float:left;width:25%;margin-left:40%;">
                                        <asp:ListItem Selected="True" Value="no1">--Select type of Post--</asp:ListItem>
                                        <asp:ListItem Value="Openings">Openings</asp:ListItem>
                                        <asp:ListItem Value="Technical">Technical</asp:ListItem>
                                        <asp:ListItem Value="General">General</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList runat="server" ID="mailTo" onchange="ShowHideDiv()" CssClass="form-control dropdown" style="float:left;width:20%;margin-left:4%;">
                                        <asp:ListItem Selected="True" Value="no2">--Select Recipients--</asp:ListItem>
                                        <asp:ListItem Value="N1">Email Everyone</asp:ListItem>
                                        <asp:ListItem Value="Y">Email a Batch</asp:ListItem>
                                        <asp:ListItem Value="N2">Do not mail</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="pull-right text-right">
                                        <asp:Button runat="server" ID="SubmitPost" CssClass="btn btn-outline btn-primary btn-block" Text="Post" OnClick="SubmitPost_Click" />
                                    </div>

                                    <asp:Textbox runat="server"  type="text" placeholder="Batch (yyyy)" CssClass="form-control" ID="batchYr" style="display: none;float:left;width:20%;margin-left:69%;" />

                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="SubmitPost" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                            
                            </div>
                        </div>
            <br />
            <div class="feed-activity-list">
                <asp:UpdatePanel runat="server" ID="feedsPanel" UpdateMode="Conditional">
                    <ContentTemplate>

                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="SubmitPost" EventName="Click" />
                    </Triggers>
            </asp:UpdatePanel>
            </div>
            
            </div>
            <br /><br />
         
            
            
        </div></div>
    </form>
    

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="js/plugins/flot/jquery.flot.symbol.js"></script>
    <script src="js/plugins/flot/jquery.flot.time.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    

    <!-- jQuery UI -->
    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- Jvectormap -->
    <script src="js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

    <!-- EayPIE -->
    <script src="js/plugins/easypiechart/jquery.easypiechart.js"></script>

    <!-- Sparkline -->
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="js/demo/sparkline-demo.js"></script>

    <script>
        
    </script>
</body>
</html>
