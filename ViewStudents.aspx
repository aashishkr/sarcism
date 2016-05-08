<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewStudents.aspx.cs" Inherits="ViewStudents" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Edit</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/select/1.1.2/css/select.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/buttons/1.1.2/css/buttons.dataTables.min.css" rel="stylesheet" />

   
</head>
<body>
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.11/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.1.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.1.2/js/dataTables.select.min.js"></script>
    <div class="panel panel-default">
        <div class="panel-body">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#ViewStudents" data-toggle="tab" >Edit Students</a></li>
                <li><a data-toggle="tab" href="#InsertStudents">Insert New Student List</a></li>
            </ul>

            <div class="tab-content">
                <div id="ViewStudents" class="tab-pane fade in active">
                    <br />
                    <div class="row">
                        <input id="deleteStudent" class="btn btn-primary pull-right" type="button" value="Deleted Selected Row" />
                    </div>
                    <br />
                    <div class="row row-border">
                        <table id="StudentTable" class="display">
                            
                        </table>
                    </div>
                </div>
                <div id="InsertStudents" class="tab-pane fade">
                    <div class="input-group-addon">
                        Enter the list of students to be inserted into the database(Admission Number, Full Name, Batch)
                    </div>
                    <textarea rows="10" cols="3" class="form-control" id="StudentList"></textarea>
                    <div class="row">
                        <input type="button" class="btn btn-primary" onclick="SendList()" value="Submit" />
                    </div>
                </div>
            </div>
        </div>
        

    </div>



    <script>
        window.onload = retrieveList;

        function retrieveList() {
            var table = document.getElementById("StudentTable");

            $.ajax({
                type: "POST",
                url: "ViewStudents.aspx/GetAllStudents",
                data: {},
                contentType: "application/json",
                dataType: "json",
                success: OnSuccess
            });
            
        };
        function OnSuccess(response) {
            var listOfStudents = response[Object.keys(response)[0]];

            var table = $('#StudentTable').DataTable({
                data: listOfStudents,
                columns: [
                    { title: "Admission Number" },
                    { title: "Name" },
                    { title: "Batch" },
                ],
                ordering: true,
            });

            $('#StudentTable tbody').on('click', 'tr', function () {
                if ($(this).hasClass('selected')) {
                    $(this).removeClass('selected');
                }
                else {
                    table.$('tr.selected').removeClass('selected');
                    $(this).addClass('selected');
                }
            });
            $('#deleteStudent').click(function () {

                var json = {
                    admissionNumber: table.cell(table.row('.selected'), 0).data(),
                    fullName: table.cell(table.row('.selected'), 1).data(),
                    batch: table.cell(table.row('.selected'), 2).data()
                }

                $.ajax({
                    type: "POST",
                    url: "ViewStudents.aspx/DeleteStudent",
                    contentType: "application/json",
                    data: JSON.stringify(json),
                    success: function (response) {
                            location.reload();
                            alert("Student Deleted Successfully");
                    },
                    failure: function (response) {
                        alert("Student Could Not be Deleted. Try Again Later");
                    }
                });
                
            });
        };
        
        function SendList() {
            var StudentList = document.getElementById("StudentList");
            var userDetails = {};
            userDetails = {
                userData: StudentList.value
            };
            $.ajax({
                type: "POST",
                url: "ViewStudents.aspx/UpdateDetails",
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
        };
    </script>

    

</body>
</html>

