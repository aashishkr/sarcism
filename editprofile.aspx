<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="EDIT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Edit</title>
    
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
                            <img alt="image" class="img-circle" src="img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><asp:Label ID="user_name" runat="server" ></asp:Label></strong>
                             </span> <span class="text-muted text-xs block">Company<b class="caret"></b> </span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="profile.html">Profile</a></li>
                                <li><a href="contacts.html">Contacts</a></li>
                                <li><a href="mailbox.html">Mailbox</a></li>
                                <li class="divider"></li>
                                <li><a href="login.html">Logout</a></li>
                            </ul>
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
                    <div class="flash-data"></div>
                        <div class="row">
                            <div class="box box-primary box-solid"  >
                                <div class="box-header" >
                                    <h3 class="box-title">Personal Details</h3>
                                </div>
                                <div class="box-body">
                                    <div class="row">
                                        <div class="form-group col-md-3 col-lg-3">
                                            <asp:TextBox runat="server" ID="user_name1" class="form-control"  placeholder="First Name" />
                                            <p class="help-block"></p>
                                        </div>
                                        <div class="form-group col-md-3 col-lg-3"  >
                                            <asp:TextBox runat="server" ID="user_name2" class="form-control"  placeholder="Last Name"  />
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                    <div class="row"  >
                                        <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  >
                                            <label>Gender</label>
                                            <asp:RadioButtonList ID="user_gender" runat="server" RepeatDirection="Vertical">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="form-group col-md-3 col-lg-3" data-date-format="dd-mm-yyyy" >
                                            <asp:Label runat="server" class="control-label">Date of Birth</asp:Label>
                                            <asp:TextBox runat="server" ID="user_dob" CssClass="form-control" placeholder="dd/mm/yyyy" ></asp:TextBox>
                                            <p class="help-block"></p>
                                        </div>
        <div class="form-group col-md-3 col-lg-3">           
            <asp:Label runat="server" class="control-label">Email</asp:Label>
            <asp:TextBox runat="server" ID="user_email" class="form-control" type="email" required="required" placeholder="Email"  />
            <p class="help-block"></p>
        </div>
        <div class="form-group col-md-3 col-lg-3">
            <asp:Label runat="server" class="control-label">Mobile No.</asp:Label>
            <asp:TextBox runat="server" ID="user_contact" class="form-control"  required="required" placeholder="Contact" />
            <p class="help-block"></p>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-3 col-lg-3">
            <asp:Label runat="server" class="control-label">Father's Name</asp:Label>
            <asp:TextBox runat="server" ID="user_father" class="form-control" placeholder="Father's Name" />
            <p class="help-block"></p>
        </div>
        <div class="form-group col-md-3 col-lg-3">
            <asp:Label runat="server" class="control-label">Mother's Name</asp:Label>
            <asp:TextBox runat="server" ID="user_mother" class="form-control" placeholder="Mother's Name" />
            <p class="help-block"></p>
        </div>
    </div>
        <div class="box box-primary box-solid">
            <div class="box-body">
                <div class="row"  >
                    <div class="col-md-6 col-sm-12 col-xs-12 col-lg-6">
                        <div class="box box-primary box-solid col-md-8 col-lg-8" >
                            <div class="box-header" >
                                <h3 class="box-title">Present Address</h3>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="add_l1" placeholder="Address Line 1" class="form-control" AutoPostBack="true"  />
                                    <p class="help-block"></p>
                                </div>
                                <div class="form-group"  >
                                    <asp:TextBox runat="server" ID="add_l2" placeholder="Addres Line 2" class="form-control" />
                                    <p class="help-block"></p>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="add_city" placeholder="City" class="form-control" />
                                    <p class="help-block"></p>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="add_state" placeholder="State" class="form-control"  />
                                    <p class="help-block"></p>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="add_pin" placeholder="Pincode" class="form-control" />
                                    <p class="help-block"></p>
                                </div>
                                <div class="form-group"  >
                                    <asp:TextBox runat="server" ID="add_country" placeholder="Country" class="form-control" />
                                    <p class="help-block"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="box box-primary box-solid">
                <div class="box-header">
                    <h3 class="box-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Work Experience</h3>
                </div>
           
    <div>
        <div>
    
        <asp:gridview ID="qualification" runat="server" ShowFooter="true" AutoGenerateColumns="false">
            <Columns>
            <asp:BoundField DataField="qualificationId" HeaderText="S. No." />
            <asp:TemplateField HeaderText="Company">
                <ItemTemplate>
                    <asp:TextBox ID="company" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Position">
                <ItemTemplate>
                    <asp:TextBox ID="position" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="From">
                <ItemTemplate>
                    <asp:TextBox ID="from" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="To">
                <ItemTemplate>
                     <asp:TextBox ID="to" runat="server"></asp:TextBox>
                </ItemTemplate>
                <FooterStyle HorizontalAlign="Right" />
                <FooterTemplate>
                 <asp:Button ID="ButtonAdd" runat="server" Text="Add More" 
                        onclick="ButtonAdd_Click" />
                </FooterTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:gridview>
    </div>
    </div>
   
                </div>
                </div>
            </div>
		</div></div>
            </section>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5 col-sm-12 col-xs-12 col-lg-5"></div><br /><br />
                <centre><asp:Button runat="server" ID="submit" Text="Submit" class=" btn btn-primary" OnClick="btn_submit" type="submit"></asp:Button></centre>
                
        </div>
            <!-- /.content -->
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
