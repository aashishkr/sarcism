<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="users" %>
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
    <style>
  .RegUser  ul{
      margin: 0;
      padding: 0;
      list-style-type: none;
      text-align: center;
    }
    
   .RegUser ul li {
      display: inline-block;
      width: 130px;
      padding: 10px;
      margin: 3px;
    }
    
   .RegUser ul li p {
      margin-top: 2px;
      margin-bottom: 2px;
    }
    </style>
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
         <div class="RegUser">
              <ul id="new-user" style="display: none;" />
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
                "lengthMenu": [16, 32, 40, 96],
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
                    var li = $(document.createElement('li'));
                    li.addClass('RegUser');
                    li.append('<img src=\" ' + data[3] + ' \" class= \" img-circle \" width= \" 55 \" />');
                    li.append('<p><a href=\"profile.aspx?id=' + data[7] + ' \">' + data[0] + ' ' + data[1] + ' </a> </p>');
                    li.append('<p> Batch ' + data[2] + '</p>');
                    li.append('<p>' + data[4] + '</p>');
                    li.append('<p>' + data[5] + '</p>');
                    li.append('<p>' + data[6] + '</p>');
                    li.appendTo('#new-user');
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
