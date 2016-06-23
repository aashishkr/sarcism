<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Profile</title>

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
                        <asp:Image runat="server" ID="userImageThumbnail" Width="55" CssClass="img-circle" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><asp:Label ID="user_name" runat="server" ></asp:Label></strong>
                             </span> </span> </a>
                    </div>
                    <div class="logo-element">
                        SARC
                    </div>
                </li>
                <li>
                    <a href="homepage.aspx"><i class="fa "></i> <span class="nav-label">Home</span> </a>
                </li>
                <li>
                    <asp:LinkButton runat="server" OnClick="GoToProfilePage"><i class="fa "></i> <span class="nav-label">View Profile</span></asp:LinkButton>
                </li>
                <li>
                    <a href="editprofile.aspx"><i class="fa "></i> <span class="nav-label">Edit Profile</span> </a>
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
        
        <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Main content -->
            <section class="content">
                <div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12"  >
                            <br /><asp:Image runat="server" Width="150" ID="userImage"/>
                        </div>
                    </div>
                    <div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12"  >
                                <div class="box box-solid box-primary"  >
                                    <div class="box-header" >
                                        <h3 class="box-title">Personal Details</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="row">
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  >
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3">
                                                <asp:Label ID="user_name1" runat="server" ></asp:Label>
                                                <asp:Label ID="user_name2" runat="server" ></asp:Label>
                                            </div>                                            
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  >
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3">
                                                <asp:Label ID="user_email" runat="server" ></asp:Label>
                                            </div>                                  
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3">
                                                <label>Gender</label>
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  ><asp:Label ID="user_gender" runat="server" ></asp:Label></div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  >
                                                <label>Date of Birth</label>
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"><asp:Label ID="user_dob" runat="server" ></asp:Label></div>
                                        </div>
                                        <div class="row" >
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3">
                                                <label>Contact No</label>
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  ><asp:Label ID="user_contact" runat="server" ></asp:Label></div>
                                        </div>
                                        <div class="row"  >
                                                <div  class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  >
                                                    <label>Father's Name</label>
                                                </div>
                                                <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  ><asp:Label ID="user_father" runat="server" ></asp:Label></div>
                                                <div  class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  >
                                                    <label>Mother's Name</label>
                                                </div>
                                                <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  ><asp:Label ID="user_mother" runat="server" ></asp:Label></div>
                                        </div>
                                    </div>
                                </div><br />
                                <div class="box box-solid box-primary"  >
                                    <div class="box-header" >
                                        <h3 class="box-title">Present Address</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="row"  >
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  >  <asp:Label runat="server" ID="addressLabel"></asp:Label>
                                                <!--<asp:Label ID="add_l1" runat="server" ></asp:Label><br><asp:Label ID="add_l2" runat="server" ></asp:Label><br>
                                                <asp:Label ID="add_city" runat="server" ></asp:Label><asp:Label ID="add_state" runat="server" ></asp:Label><asp:Label ID="add_pin" runat="server" ></asp:Label>
                                                <br /><asp:Label ID="add_country" runat="server" ></asp:Label><br /> -->
										    </div>
                                        </div>
                                    </div>
                                </div><br />
                                <div id="WorkBox"   class="box box-solid box-primary"  >
                                    <div class="box-header" >
                                        <h3 class="box-title">Work Experience</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="table-responsive">
                                            <table id="workExperienceTable" class="table table-hover table-bordered table-striped table-condensed"   >
                                                <thead>
										            <tr>
                                                        <th>Serial No</th>
											            <th>Company</th>
											            <th>Designation</th>
											            <th>From</th>
											            <th>To</th>
										            </tr>
									            </thead>							
												<tbody>

												</tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div></div></div></div>
            </section><!-- /.content -->
        </div><!-- ./wrapper -->
        </div>
    </div>
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
        window.onload = populateTable;

        function getParameterByName(name) {
            var url = window.location.href;
            name = name.replace(/[\[\]]/g, "\\$&");
            var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, " "));
        }

        function populateTable() {
            jsonData = {
                emailId: getParameterByName("id")
            }
            $.ajax({
                type: "POST",
                url: "editprofile.aspx/GetExperienceData",
                data: JSON.stringify(jsonData),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
            });
        }

        function OnSuccess(response) {
            console.log(response);
            var experienceData = response[Object.keys(response)[0]];
            var table = document.getElementById("workExperienceTable");
            for (var i = 0; i < experienceData.length; i++) {
                var row = table.insertRow();
                var cell = row.insertCell(0);
                cell.innerHTML = i + 1;
                for (var j = 0; j < 4; j++) {
                    var cell1 = row.insertCell(j + 1);
                    cell1.innerHTML = experienceData[i][j];
                }
            }
        }
    </script>
</body>

</html>
