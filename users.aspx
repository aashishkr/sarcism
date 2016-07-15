<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="users2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Users</title>

   <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>

    <!-- Data Tables -->
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet"/>
    <link href="css/plugins/dataTables/dataTables.responsive.css" rel="stylesheet"/>
    <link href="css/plugins/dataTables/dataTables.tableTools.min.css" rel="stylesheet"/>

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
              <table id="RegStudents" class="display " style="display:none"></table>
         <div class="RegUser wrapper wrapper-content animated fadeInRight">
             <div class="row">
              <div id="new-user" style="display:none;"></div>
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
    <script src="js/plugins/jeditable/jquery.jeditable.js"></script>

    <!-- Data Tables -->
    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="js/plugins/dataTables/dataTables.responsive.js"></script>
    <script src="js/plugins/dataTables/dataTables.tableTools.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>
         <script>
             $(document).ready(function () {
                 $('.contact-box').each(function () {
                     animationHover(this, 'pulse');
                 });
             });
    </script>
    <script>
        window.onload = retrieve;
        function retrieve() {
            var table = document.getElementById("RegStudents");
            $.ajax({
                type: "POST",
                url: "users.aspx/AllReg",
                data: {},
                contentType: "application/json",
                dataType: "json",
                success: OnSuccess
            });
        }
        function OnSuccess(response) {
            var listOfReg = response[Object.keys(response)[0]];

            var table = $('#RegStudents').DataTable({
                "lengthMenu": [18, 36, 90, 120],
                "data": listOfReg,
                "columns": [
                  { "title": "FName" },
                  { "title": "LName" },
                  { "title": "Batch" },
                  { "title": "ImageLink" },
                  { "title": "City" },
                  { "title": "State" },
                  { "title": "Country" },
                  { "title": "MailID" }
                ],
                "initComplete": function (settings, json) {
                    // show new container for data
                    $('#new-user').insertBefore('#example');
                    $('#new-user').show();
                },
                "rowCallback": function (row, data) {
                    // on each row callback
                    var div = $(document.createElement('div'));
                    div.addClass('col-lg-4');
                    if (data[4] != "" || data[5] != "" || data[6] != "")
                        div.append('<div style="height:170px; width:350px;"><div class= \"contact-box\"><a href=\"profile.aspx?id=' + data[7] + ' \" ><div class =\"col-sm-4\"><div><img alt=\"image\" class = \" img-circle m-t-xs img-responsive \" src =\"' + data[3] + ' \"> </div></div><div class=\"col-sm-8\"><h3><strong>' + data[0] + ' ' + data[1] + '</strong></h3><p>Batch ' + data[2] + '</p><address><i class=\"fa fa-map-marker\"></i>   ' + data[4] + ', ' + data[5] + ', ' + data[6] + '</address></div><div class=\"clearfix\"></div></a></div></div>');
                    else
                        div.append('<div style="height:170px; width:350px;"><div class= \"contact-box\"><a href=\"profile.aspx?id=' + data[7] + ' \" ><div class =\"col-sm-4\"><div><img alt=\"image\" class = \" img-circle m-t-xs img-responsive \" src =\"' + data[3] + ' \"> </div></div><div class=\"col-sm-8\"><h3><strong>' + data[0] + ' ' + data[1] + '</strong></h3><p>Batch ' + data[2] + '</p></div><div class=\"clearfix\"></div></a></div></div>');
                    div.appendTo('#new-user');
                },
                "preDrawCallback": function (settings) {
                    // clear list before draw
                    $('#new-user').empty();
                }
            });
        }
    </script>
</body>
</html>
