﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="_Default" %>

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
    <div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><asp:Label ID="user_name" runat="server" ></asp:Label></strong>
                             </span> <span class="text-muted text-xs block">Company </span> </span> </a>
                    </div>
                    <div class="logo-element">
                        SARC
                    </div>
                </li>
                <li>
                    <a href="homepage.aspx"><i class="fa "></i> <span class="nav-label">Home</span> </a>
                </li>
                <li>
                    <a href="profile.aspx"><i class="fa "></i> <span class="nav-label">View Profile</span> </a>
                </li>
                <li>
                    <a href="editprofile.aspx"><i class="fa "></i> <span class="nav-label">Edit Profile</span> </a>
                </li>
                
                <li class="">
                    <a href=""><i class="fa "></i> <span class="nav-label">Query</span><span class="label label-primary pull-right">NEW</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="My.aspx">My Queries</a></li>
                        <li ><a href="All.aspx">All Queries</a></li>
                        <li><a href="Ask.aspx">Ask a Query</a></li>
                    </ul>
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
                    <a href="MainPage.aspx">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
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
                            <br /><img src="img//profile_small.jpg" width="145" height="150" />
                        </div>
                    </div>
                    <div>
                        <div class="form-group">
                            <input id="stu_id" value="14JE000289" class="form-control"  type="hidden"  />
                                <p class="help-block"></p>
                        </div>
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
                                                    <label>Father Name</label>
                                                </div>
                                                <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  ><asp:Label ID="user_father" runat="server" ></asp:Label></div>
                                                <div  class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  >
                                                    <label>Mother Name</label>
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
                                            <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  ><asp:Label ID="add_l1" runat="server" ></asp:Label><br><asp:Label ID="add_l2" runat="server" ></asp:Label><br>
                                                <asp:Label ID="add_city" runat="server" ></asp:Label><asp:Label ID="add_state" runat="server" ></asp:Label><asp:Label ID="add_pin" runat="server" ></asp:Label>
                                                <br /><asp:Label ID="add_country" runat="server" ></asp:Label><br />
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
                                            <table id="UsersEducationTable" class="table table-hover table-bordered table-striped table-condensed"   >
                                                <thead>
										            <tr>
											            <th>Company</th>
											            <th>Designation</th>
											            <th>From</th>
											            <th>To</th>
										            </tr>
									            </thead>							
													<tr>
												        <td>Facebook</td>
												        <td>Manager</td>
												        <td>2001</td>
												        <td>2008</td>
											        </tr>
													<tr>
												        <td>Google</td>
												        <td>C.E.O.</td>
												        <td>2009</td>
												        <td>2013</td>
											        </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div></div></div></div>
            </section><!-- /.content -->
        </div><!-- ./wrapper -->

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
        $(document).ready(function () {
            $('.chart').easyPieChart({
                barColor: '#f8ac59',
                //                scaleColor: false,
                scaleLength: 5,
                lineWidth: 4,
                size: 80
            });

            $('.chart2').easyPieChart({
                barColor: '#1c84c6',
                //                scaleColor: false,
                scaleLength: 5,
                lineWidth: 4,
                size: 80
            });

            var data2 = [
                [gd(2012, 1, 1), 7], [gd(2012, 1, 2), 6], [gd(2012, 1, 3), 4], [gd(2012, 1, 4), 8],
                [gd(2012, 1, 5), 9], [gd(2012, 1, 6), 7], [gd(2012, 1, 7), 5], [gd(2012, 1, 8), 4],
                [gd(2012, 1, 9), 7], [gd(2012, 1, 10), 8], [gd(2012, 1, 11), 9], [gd(2012, 1, 12), 6],
                [gd(2012, 1, 13), 4], [gd(2012, 1, 14), 5], [gd(2012, 1, 15), 11], [gd(2012, 1, 16), 8],
                [gd(2012, 1, 17), 8], [gd(2012, 1, 18), 11], [gd(2012, 1, 19), 11], [gd(2012, 1, 20), 6],
                [gd(2012, 1, 21), 6], [gd(2012, 1, 22), 8], [gd(2012, 1, 23), 11], [gd(2012, 1, 24), 13],
                [gd(2012, 1, 25), 7], [gd(2012, 1, 26), 9], [gd(2012, 1, 27), 9], [gd(2012, 1, 28), 8],
                [gd(2012, 1, 29), 5], [gd(2012, 1, 30), 8], [gd(2012, 1, 31), 25]
            ];

            var data3 = [
                [gd(2012, 1, 1), 800], [gd(2012, 1, 2), 500], [gd(2012, 1, 3), 600], [gd(2012, 1, 4), 700],
                [gd(2012, 1, 5), 500], [gd(2012, 1, 6), 456], [gd(2012, 1, 7), 800], [gd(2012, 1, 8), 589],
                [gd(2012, 1, 9), 467], [gd(2012, 1, 10), 876], [gd(2012, 1, 11), 689], [gd(2012, 1, 12), 700],
                [gd(2012, 1, 13), 500], [gd(2012, 1, 14), 600], [gd(2012, 1, 15), 700], [gd(2012, 1, 16), 786],
                [gd(2012, 1, 17), 345], [gd(2012, 1, 18), 888], [gd(2012, 1, 19), 888], [gd(2012, 1, 20), 888],
                [gd(2012, 1, 21), 987], [gd(2012, 1, 22), 444], [gd(2012, 1, 23), 999], [gd(2012, 1, 24), 567],
                [gd(2012, 1, 25), 786], [gd(2012, 1, 26), 666], [gd(2012, 1, 27), 888], [gd(2012, 1, 28), 900],
                [gd(2012, 1, 29), 178], [gd(2012, 1, 30), 555], [gd(2012, 1, 31), 993]
            ];


            var dataset = [
                {
                    label: "Number of orders",
                    data: data3,
                    color: "#1ab394",
                    bars: {
                        show: true,
                        align: "center",
                        barWidth: 24 * 60 * 60 * 600,
                        lineWidth: 0
                    }

                }, {
                    label: "Payments",
                    data: data2,
                    yaxis: 2,
                    color: "#464f88",
                    lines: {
                        lineWidth: 1,
                        show: true,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 0.2
                            }, {
                                opacity: 0.2
                            }]
                        }
                    },
                    splines: {
                        show: false,
                        tension: 0.6,
                        lineWidth: 1,
                        fill: 0.1
                    },
                }
            ];


            var options = {
                xaxis: {
                    mode: "time",
                    tickSize: [3, "day"],
                    tickLength: 0,
                    axisLabel: "Date",
                    axisLabelUseCanvas: true,
                    axisLabelFontSizePixels: 12,
                    axisLabelFontFamily: 'Arial',
                    axisLabelPadding: 10,
                    color: "#d5d5d5"
                },
                yaxes: [{
                    position: "left",
                    max: 1070,
                    color: "#d5d5d5",
                    axisLabelUseCanvas: true,
                    axisLabelFontSizePixels: 12,
                    axisLabelFontFamily: 'Arial',
                    axisLabelPadding: 3
                }, {
                    position: "right",
                    clolor: "#d5d5d5",
                    axisLabelUseCanvas: true,
                    axisLabelFontSizePixels: 12,
                    axisLabelFontFamily: ' Arial',
                    axisLabelPadding: 67
                }
                ],
                legend: {
                    noColumns: 1,
                    labelBoxBorderColor: "#000000",
                    position: "nw"
                },
                grid: {
                    hoverable: false,
                    borderWidth: 0
                }
            };

            function gd(year, month, day) {
                return new Date(year, month - 1, day).getTime();
            }

            var previousPoint = null, previousLabel = null;

            $.plot($("#flot-dashboard-chart"), dataset, options);

            var mapData = {
                "US": 298,
                "SA": 200,
                "DE": 220,
                "FR": 540,
                "CN": 120,
                "AU": 760,
                "BR": 550,
                "IN": 200,
                "GB": 120,
            };

            $('#world-map').vectorMap({
                map: 'world_mill_en',
                backgroundColor: "transparent",
                regionStyle: {
                    initial: {
                        fill: '#e4e4e4',
                        "fill-opacity": 0.9,
                        stroke: 'none',
                        "stroke-width": 0,
                        "stroke-opacity": 0
                    }
                },

                series: {
                    regions: [{
                        values: mapData,
                        scale: ["#1ab394", "#22d6b1"],
                        normalizeFunction: 'polynomial'
                    }]
                },
            });
        });
    </script>
</body>

</html>