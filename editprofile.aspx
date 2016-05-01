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
                        <asp:Image AlternateText="Image" CssClass="img-circle" runat="server" Width="55" ID="userImageThumbnail"/>
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
                    <a href="homepage.aspx"><i class="fa "></i> <span class="nav-label">Home</span> </a>
                </li>
                <li>
                    <a href="profile.aspx"><i class="fa "></i> <span class="nav-label">View Profile</span> </a>
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
                                        <div class="form-group col-md-3">
                                            First Name <br />
                                            <asp:TextBox runat="server" ID="user_name1" class="form-control"  placeholder="First Name" />
                                            <p class="help-block"></p>
                                        </div>
                                        <div class="form-group col-md-3" >
                                            Last Name<br />
                                            <asp:TextBox runat="server" ID="user_name2" class="form-control"  placeholder="Last Name"  />
                                            <p class="help-block"></p>
                                        </div>
                                        <div class="form-group col-md-3" >
                                            Upload Image<br />
                                            <input type="file" class="upload"  id="f_UploadImage" /><br />
                                            <img id="myUploadedImg" alt="Photo" style="width:180px;" />
                                        </div>
                                    </div>
                                    </div>
                                    
                                    <div class="row"  >
                                        <div class="col-md-3 col-sm-12 col-lg-3"  >
                                            Gender <br />
                                            <asp:DropDownList runat="server" CssClass="form-control" ID="user_gender">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group col-md-3 col-lg-3" data-date-format="dd-mm-yyyy" >
                                            <asp:Label runat="server" class="control-label">Date of Birth</asp:Label>
                                            <asp:TextBox runat="server" ID="user_dob" CssClass="form-control" placeholder="dd/mm/yyyy" ></asp:TextBox>
                                            <p class="help-block"></p>
                                        </div>
  <!--      <div class="form-group col-md-3 col-lg-3">           
            <asp:Label runat="server" class="control-label">Email</asp:Label>
            <asp:TextBox runat="server" ID="user_email" class="form-control" type="email" required="required" placeholder="Email"  />
            <p class="help-block"></p>
        </div> -->
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
                                    <asp:TextBox runat="server" ID="add_l2" placeholder="Address Line 2" class="form-control" />
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
        <asp:ScriptManager runat="server" EnablePartialRendering="true" EnablePageMethods="true"/>
        <div class="container-fluid">
            <div class="row">
                <div class="box box-primary box-solid">
                <div class="box-header">
                    <h3 class="box-title">Work Experience</h3>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover table-bordered table-striped table-condensed" id="workExperienceTable">
                        <thead>
                            <tr>
                                <th>Serial Number</th>
                                <th>Company</th>
                                <th>Position</th>
                                <th>Start Year</th>
                                <th>Ending Year</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
                    
                <div class="row">
                    <div class="pull-right">
                        <input type="button" onclick="addEmptyRow()" class="btn btn-default" name="Add New Row" value="Add New Row" />
                        <input type="button" onclick="deleteEmptyRow()" class="btn btn-default" name="Delete Last Row" value="Delete Last Row" />
                        
                    </div>
                </div>
                        
                    <br />
                    <br />
                    
    <div>
        <div>
    
        
    </div>
    </div>
   
                </div>
            </div>
            
                </div>
            </div>
		</div>
            </section>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="center-orientation">
                        <input type="button" class="btn btn-primary" name="Submit" value="Submit" onclick="sendEntireData()" />
              </div>
            </div>
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
        
        function deleteEmptyRow()
        {
            var table = document.getElementById("workExperienceTable");
            var length = table.rows.length;
            table.deleteRow(length - 1);
        }

        var _URL = window.URL || window.webkitURL;
        $("#f_UploadImage").on('change', function () {

            var file, img;
            if ((file = this.files[0])) {
                img = new Image();
                img.onload = function () {
                    sendFile(file);
                };
                img.onerror = function () {
                    alert("Not a valid file:" + file.type);
                };
                img.src = _URL.createObjectURL(file);
            }
        });

        function sendFile(file) {

            var formData = new FormData();
            formData.append('file', $('#f_UploadImage')[0].files[0]);
            $.ajax({
                type: 'post',
                url: 'fileUploader.ashx',
                data: formData,
                success: function (status) {
                    if (status != 'error') {
                        var my_path = "MediaUploader/" + status;
                        $("#myUploadedImg").attr("src", my_path);
                    }
                },
                processData: false,
                contentType: false,
                error: function () {
                    alert("Whoops something went wrong!");
                }
            });
        }
        function sendEntireData()
        {
            var table = document.getElementById("workExperienceTable");
            var tableArray = [];

            for(var i = 1; i < table.rows.length; i++)
            {
                var tempArray = [];
                for(var j = 1; j < table.rows[i].cells.length; j++)
                {
                    tempArray.push(table.rows[i].cells[j].children[0].value);
                }
                tableArray.push(tempArray);
            }

            var userDetails = {};

            userDetails.firstName = document.getElementById("user_name1").value;
            userDetails.lastName = document.getElementById("user_name2").value;
            userDetails.gender = document.getElementById("user_gender").options[document.getElementById("user_gender").selectedIndex].text;
            userDetails.dateOfBirth = document.getElementById("user_dob").value;
            userDetails.mobileNo = document.getElementById("user_contact").value;
            userDetails.fatherName = document.getElementById("user_father").value;
            userDetails.motherName = document.getElementById("user_mother").value;
            userDetails.addressLine1 = document.getElementById("add_l1").value;
            userDetails.addressLine2 = document.getElementById("add_l2").value;
            userDetails.city = document.getElementById("add_city").value;
            userDetails.state = document.getElementById("add_state").value;
            userDetails.pincode = document.getElementById("add_pin").value;
            userDetails.country = document.getElementById("add_country").value; 
            userDetails.workExperienceArray = tableArray;

            
            $.ajax({
                type: "POST",
                url: "editprofile.aspx/UpdateDetails",
                contentType: "application/json",
                data: JSON.stringify(userDetails),
                success: function (response) {
                    setTimeout(function () {
                        location.reload();
                        alert("Data saved successfully");
                    }, 1000);
                    
                },
                failure: function (response) {
                    alert("Data could not be saved, try again later");
                }
            }); 
        }
        
        function retrieveData()
        {
            var workExperienceTable = document.getElementById("workExperienceTable");
            var arrayHoldingData = [];
            for(var i = 0; i < workExperienceTable.rows.length; i++)
            {
                var temp = [];
                for(var j = 0; j < 5; j++)
                    temp.push(workExperienceTable.rows[i].cells[j].children[0].value);
                
                arrayHoldingData.push(temp);
            }
            PageMethods.AddWorkExperience(arrayHoldingData);    
        }
        function populateTable()
        {
            $.ajax({
                type: "POST",
                url: "editprofile.aspx/GetExperienceData",
                data: {},
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess
            });
        }

        function OnSuccess(response)
        {
            var experienceData = response[Object.keys(response)[0]];
            var table = document.getElementById("workExperienceTable");
            for(var i = 0; i < experienceData.length; i++)
            {
                var row = table.insertRow();
                var cell = row.insertCell(0);
                cell.innerHTML = i + 1;
                for(var j = 0; j < 4; j++)
                {
                    var cell1 = row.insertCell(j+1);
                    var inputElement = document.createElement("input");
                    inputElement.setAttribute("class", "form-control");
                    inputElement.value = experienceData[i][j];
                    cell1.appendChild(inputElement);
                }
            }
        }

        function addEmptyRow()
        {
            var table = document.getElementById("workExperienceTable");
            var row = table.insertRow();

            var cell0 = row.insertCell(0);
            cell0.innerHTML = table.rows.length - 1;

            var inputElement1 = document.createElement("input");
            var cell1 = row.insertCell(1);
            inputElement1.setAttribute("class", "form-control");
            cell1.appendChild(inputElement1);

            var inputElement2 = document.createElement("input");
            var cell2 = row.insertCell(2);
            inputElement2.setAttribute("class", "form-control");
            cell2.appendChild(inputElement2);

            var inputElement3 = document.createElement("input");
            var cell3 = row.insertCell(3);
            inputElement3.setAttribute("class", "form-control");
            cell3.appendChild(inputElement3);

            var inputElement4 = document.createElement("input");
            var cell4 = row.insertCell(4);
            inputElement4.setAttribute("class", "form-control");
            cell4.appendChild(inputElement4);
        }
    </script>
</body>

</html>
