<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="EDIT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Edit Profile</title>

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
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Deepak Kumar</strong>
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
                        <li><a href="">My Queries</a></li>
                        <li ><a href="">All Queries</a></li>
                        <li><a href="">Ask a Query</a></li>
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
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/a7.jpg">
                                </a>
                                <div class="media-body">
                                    <small class="pull-right">46h ago</small>
                                    <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/a4.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right text-navy">5h ago</small>
                                    <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/profile.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="mailbox.html">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="mailbox.html">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="grid_options.html">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.html">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>


                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
            </ul>

        </nav>
        </div>
        
        <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Main content -->
                <section class="content">
                    <div class="flash-data">

                    </div>
                    <form enctype="multipart/form-data" method="post" accept-charset="utf-8">
                        <div class="row"  ><div class="box box-primary box-solid"  >
                            <div class="box-header" >
                                <h3 class="box-title">Personal Details</h3>

                            </div>
                            <div class="box-body">
                                <div class="row"  >
                                    <div class="form-group col-md-3 col-lg-3"  >
                                        <select name="salutation" class="form-control" disabled="disabled"   >
                                            <option value="mr"  selected="selected" >Mr</option>
                                            <option value="mrs"  >Mrs</option>
                                            <option value="ms"  >Ms</option><option  value="dr"  >Dr</option>

                                        </select>
                                        <p class="help-block"></p>

                                    </div>
                                    <div class="form-group col-md-3 col-lg-3"  >
                                        <input id="firstname" name="firstname" value="Saurabh" class="form-control" disabled="disabled"  placeholder="First Name" required="required"  />
                                        <p class="help-block"></p>

                                    </div>
                                    <div class="form-group col-md-3 col-lg-3"  >
                                        <input  name="middlename" class="form-control" disabled="disabled"  placeholder="Middle Name"  />
                                        <p class="help-block"></p>

                                    </div>
                                    <div class="form-group col-md-3 col-lg-3"  >
                                        <input  name="lastname" value="Saraswat" class="form-control" disabled="disabled"  placeholder="Last Name"  />
                                        <p class="help-block"></p>

                                    </div>

                                </div>
                                <div  class="row"  >
                                    <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3"  >
                                        <label>Gender</label>
                                        <div class="form-group radio"  >
                                            <label><input name="sex" value="m" class="form-control"  type="radio" checked="checked"  /> Male</label>

                                        </div>
                                        <div class="form-group radio"  >
                                            <label><input name="sex" value="f" class="form-control"  type="radio"  /> Female</label>

                                        </div>
                                        <div class="form-group radio"  >
                                            <label><input name="sex" value="o" class="form-control"  type="radio"  /> Others</label>

                                        </div>

                                    </div>
                                    <div class="form-group col-md-3 col-lg-3" data-date-format="dd-mm-yyyy" >
                                        <label class="control-label"    >Date of Birth</label>
                                        <input name="dob" value="06-01-1995" class="form-control"   />
                                        <p class="help-block"></p>

                                    </div>
		<script>
		    $("#ac3f5dbadbbe90ff10fa48b504306ab7").datepicker({
		        format: "dd-mm-yyyy",
		        autoclose: true,
		        todayBtn: "linked"
		    }); $("#ac3f5dbadbbe90ff10fa48b504306ab7").datepicker("setDate", moment("06-01-1995", "DD-MM-YYYY").toDate());

		</script>
                    <div class="row"  >
                                    <div class="form-group col-md-3 col-lg-3"  >
                                        <label class="control-label" >Marital Status</label>
                                        <select name="mstatus" class="form-control"   >
                                            <option value="unmarried"  selected="selected" >Unmarried</option>
                                            <option value="married"  >Married</option>
                                            <option value="widow"  >Widow</option>
                                            <option value="Widower"  >Widower</option>
                                            <option value="divorcee"  >Divorcee</option>
                                            <option value="separated"  >Separated</option>

                                        </select>
                                        <p class="help-block"></p>

                                    </div>

                                </div>
                    </div>

              </div>
   <div class="box box-primary box-solid"  >
       <div class="box-body">
           <div class="row"  >
               <div class="col-md-4 col-sm-12 col-xs-12 col-lg-4"  >
                   <div class="box box-primary box-solid"  >
                      <div class="box-body">
                          <div class="form-group"  >
                              <label class="control-label"  for="father_name"  >Father's Name</label>
                              <input id="father_name" name="father_name" value="Komal Prasad Saraswat" class="form-control"   />
                              <p class="help-block"></p>

                          </div>
        </div>

                   </div>

               </div>
               <div class="col-md-4 col-sm-12 col-xs-12 col-lg-4"  >
                   <div class="box box-primary box-solid"  >
                       <div class="box-body">
                           <div class="form-group"  >
                               <label class="control-label"  for="mother_name"  >Mother's Name</label>
                               <input id="mother_name" name="mother_name" value="Sudha Saraswat" class="form-control"   />
                               <p class="help-block"></p>

                           </div>
                          </div>

                   </div>

               </div>
             </div>
           </div>

   </div>
         <div class="box box-primary box-solid"  >
          <div class="box box-primary box-solid"  >
        
              <div class="box-body">
                  <div class="row"  >
                      <div class="col-md-6 col-sm-12 col-xs-12 col-lg-6"  >
                          <div class="box box-primary box-solid"  >
                              <div class="box-header" >
                                  <h3 class="box-title">Present Address</h3>

                              </div>
                              <div class="box-body">
                                  <div class="form-group"  >
                                      <label class="control-label"  >Address Line 1</label>
                                      <input name="line11" value="42 Rampuram 200 ft. PAC Road" class="form-control"  required="required"  />
                                      <p class="help-block"></p>

                                  </div>
                                  <div class="form-group"  >
                                      <label class="control-label"  >Address Line 2</label>
                                      <input name="line21" value="Shyam Nagar" class="form-control"  required="required"  />
                                      <p class="help-block"></p>

                                  </div>
                                  <div class="form-group"  >
                                          <label class="control-label">City</label>
                                      <input name="city1" value="kanpur" class="form-control"  required="required"  />
                                      <p class="help-block"></p>

                                  </div>
                                  <div class="form-group"  >
                                      <label class="control-label">State</label>
                                      <select name="state1" class="form-control"   >
                                          <option value="andaman & nicobar"  >Andaman & Nicobar</option>
                                          <option value="andhra pradesh"  >Andhra Pradesh</option>
                                          <option value="arunachal pradesh"  >Arunachal Pradesh</option>
                                          <option value="assam"  >Assam</option>
                                          <option value="bihar"  >Bihar</option>
                                          <option value="chandigarh"  >Chandigarh</option>
                                          <option  value="chhattisgarh"  >Chhattisgarh</option>
                                          <option  value="dadra & nagar"  >Dadra & Nagar</option>
                                          <option  value="daman & diu"  >Daman & Diu</option>
                                          <option  value="delhi"  >Delhi</option>
                                          <option value="goa"  >Goa</option>
                                          <option value="gujrat"  >Gujrat</option>
                                          <option value="haryana"  >Haryana</option>
                                          <option value="himachal pradesh"  >Himachal Pradesh</option>
                                          <option value="jammu & kashmir"  >Jammu & Kashmir</option>
                                          <option value="jharkhand"  >Jharkhand</option>
                                          <option  value="karnataka"  >Karnataka</option>
                                          <option  value="kerala"  >Kerala</option>
                                          <option value="lakshdweep"  >Lakshdweep</option>
                                          <option value="madhya pradesh"  >Madhya Pradesh</option>
                                          <option value="maharashtra"  >Maharashtra</option>
                                          <option value="manipur"  >Manipur</option>
                                          <option value="meghalaya"  >Meghalaya</option>
                                          <option  value="mizoram"  >Mizoram</option>
                                          <option  value="nagaland"  >Nagaland</option>
                                          <option  value="odisha"  >Odisha</option>
                                          <option  value="other"  >Other</option>
                                          <option  value="pondichery"  >Pondichery</option>
                                          <option  value="punjab"  >Punjab</option>
                                          <option  value="rajasthan"  >Rajasthan</option>
                                          <option  value="sikkim"  >Sikkim</option>
                                          <option  value="tamil nadu"  >Tamil Nadu</option>
                                          <option  value="telangana"  >Telangana</option>
                                          <option  value="tripura"  >Tripura</option>
                                          <option  value="uttar pradesh"  selected="selected" >Uttar Pradesh</option>
                                          <option  value="uttarakhand"  >Uttarakhand</option>
                                          <option  value="west bengal"  >West Bengal</option>

                                      </select>
                                      <p class="help-block"></p></div><div class="form-group"  >
                                          <label class="control-label"  for="pincode1"  >Pincode</label>
                                          <input  name="pincode1" value="208013" class="form-control"  required="required"  />
                                          <p class="help-block"></p>

                                                                      </div>
                                  <div class="form-group"  >
                                      <label class="control-label"    >Country</label>
                                      <input name="country1" value="india" class="form-control"  required="required"  />
                                      <p class="help-block"></p>

                                  </div>
                                  <div class="form-group"  >
                                      <label class="control-label"  for="contact1"  >Contact No.</label>
                                      <input  name="contact1" value="8797900357" class="form-control"  required="required"  />
                                      <p class="help-block"></p>

                                  </div>

                              </div>

                          </div>

                      </div>
                      </div>

                      <div  class="row"  >
                          <div   class="box box-primary box-solid"  >
                              <div class="box-header" >
                                  <h3 class="box-title">Work Experience</h3>

                              </div>
                              <div class="box-body">
                                  <div class="form-group"  ><input  value="ug" class="form-control"  type="hidden"  />
                                      <p class="help-block"></p>

                                  </div>
                                  <div   class="row"  >
                                      <div class="row"  >
                                          <div class="table-responsive">
                                              <table  class="table table-hover table-bordered col-md-12 col-lg-12"   >
                            <tr>
                                <th>S no.</th>
                                <th>Company</th>
                                <th>Designation</th>
                                <th>From</th>
                                <th>To</th>
                            </tr>
                              <tr name="row[]" align="center">
                                  <td id="sno">1</td>
                                  <td>
                                      <div class="form-group"  >
                                          <input  name="exam4[]" value="Facebook" class="form-control"   />
                                          <p class="help-block"></p>

                                      </div>

                                  </td>
                                  <td>
                                      <div class="form-group"  >
                                          <input name="branch4[]" value="10" class="form-control"   />
                                          <p class="help-block"></p>

                                      </div>

                                  </td>
                                  <td>
                                      <div class="form-group"  >
                                          <input name="clgname4[]" value="DR. VIRENDRA SWARUP EDUCATION CENTRE" class="form-control"   />
                                          <p class="help-block"></p>

                                      </div>

                                  </td>
                                  <td>
                                      <div class="form-group"  >
                                          <select  name="year4[]" class="form-control"   >
                                              <option value="1990"  >1990</option>
                                              <option id="781cd984a49fd9dca5fd8de8d50cf194" value="1991"  >1991</option>
                                              <option id="9a684f921d8e16c2a7e61a031386c55a" value="1992"  >1992</option>
                                              <option id="399e3773df1d7bfb0aaa0d877f7545c6" value="1993"  >1993</option>
                                              <option id="f8aa61e297d6cf274318e510d93b3022" value="1994"  >1994</option>
                                              <option id="6ed01ce5427ff1821490713af6dfc542" value="1995"  >1995</option>
                                              <option id="ea84ed882cd5de13fd34caf5b62940f9" value="1996"  >1996</option>
                                              <option id="b338e104631607d723cf4dc293c90beb" value="1997"  >1997</option>
                                              <option id="8d33134a41fe7e1b967b5be0529bc372" value="1998"  >1998</option>
                                              <option id="a6090dbfd9594ba4aa572044b5d2abf9" value="1999"  >1999</option>
                                              <option id="eb0edbc3470cbc2d1a5238bd13c21786" value="2000"  >2000</option>
                                              <option id="5363934dc92f47dd5af62c27097b5f99" value="2001"  >2001</option>
                                              <option id="3f0a53b38378a9ea3d9a2cc02ab22650" value="2002"  >2002</option>
                                              <option id="b536712a6306af90ff71163661027feb" value="2003"  >2003</option>
                                              <option id="36cefad6a474c0f70ca0edfa8e6ebe7a" value="2004"  >2004</option>
                                              <option id="e1b48e5255845d433442d5f58cd2d633" value="2005"  >2005</option>
                                              <option id="a2fb58173a8123a894dcffb237bd2aef" value="2006"  >2006</option>
                                              <option id="8c277ec051a378e46e2cc6366d00440c" value="2007"  >2007</option>
                                              <option id="4649f0c810a5353c6d3d185cb96b6983" value="2008"  >2008</option>
                                              <option id="58e72762191c25f1939097a9413081d9" value="2009"  >2009</option>
                                              <option id="10c71df337b1bc0b2387503dca2edf20" value="2010"  >2010</option>
                                              <option id="e19f0eafaff185721c9040f918169ed9" value="2011"  selected="selected" >2011</option>
                                              <option id="7e3a49610ff3153ce133c4464f32a14b" value="2012"  >2012</option>
                                              <option id="00bc3ed43d39f2208e47afbdfdd50a64" value="2013"  >2013</option>
                                              <option id="a1c7f7187b01c68107e87bda9e2a62e7" value="2014"  >2014</option>
                                              <option id="78847a4c9b1e263b68c2c11fdfd1e168" value="2015"  >2015</option>

                                          </select>
                                          <p class="help-block"></p>

                                      </div>

                                  </td>
                              </tr>
                              <tr name="row[]" id="addrow" align="center">
                                  <td id="sno">2</td>
                                  <td><div class="form-group"  ><input id="6e67fdfcf1c80d0aceb5cd6263df147c" name="exam4[]" value="SENIOR SCHOOL CERTIFICATE EXAMINATION" class="form-control"   /><p class="help-block"></p></div></td>
                                  <td><div class="form-group"  ><input id="49076d784cb17c357571463590a244ca" name="branch4[]" value="12" class="form-control"   /><p class="help-block"></p></div></td>
                                  <td><div class="form-group"  ><input id="58aa070dff5fd2a0732146b71424b0b2" name="clgname4[]" value="DR. VIRENDRA SWARUP EDUCATION CENTRE" class="form-control"   /><p class="help-block"></p></div></td>
                                  <td><div class="form-group"  ><select id="0d7eaf833d3117368cdff81b81477baa" name="year4[]" class="form-control"   ><option id="476ede3eb68e27f4d26290836ed03e12" value="1926"  >1926</option><option id="74b19fe6cc233ca34b0546aae0217812" value="1927"  >1927</option><option id="323b819e92084d612d0b0ef991cabd2c" value="1928"  >1928</option><option id="5bdf846f5abe0f14e36aa42c52e0d33f" value="1929"  >1929</option><option id="389e8caf7d82a78c51f8547477a79565" value="1930"  >1930</option><option id="ea684c87807f9b38b2a1510f750a6459" value="1931"  >1931</option><option id="1292b1bcc72d975347901cc3920ffcc8" value="1932"  >1932</option><option id="600d36dff4f8d7aaab510ccfa979ddc7" value="1933"  >1933</option><option id="20cf243b9a3f269e22d81127f3654059" value="1934"  >1934</option><option id="0a8c12c1e44040c4eff1ef4a2cd67dc7" value="1935"  >1935</option><option id="f1dc3b71c1d4ca75c094bc8a69a138e9" value="1936"  >1936</option><option id="849ba84f11f37686a9e990439b9c4af9" value="1937"  >1937</option><option id="833abf502b1ec2a12f485ed26c369b0d" value="1938"  >1938</option><option id="d3cf09fdf75664a7ec5e6c89e2252156" value="1939"  >1939</option><option id="2f05e435c86806526c9c835cb7bee58a" value="1940"  >1940</option><option id="d9931ea5fef2ad7c72a9ce9774d3afb7" value="1941"  >1941</option><option id="2854f6b3da501caa63c64d3285bd192a" value="1942"  >1942</option><option id="9d0fe73f63c7bf9d5a9bab9a1ea9a8a8" value="1943"  >1943</option><option id="3f4d894883e7c45589550e50f70cbc9c" value="1944"  >1944</option><option id="8a799585b43ce3b997b2ea3bae63f11e" value="1945"  >1945</option><option id="0815f65e0b8fb9c1be3e798f8e6331d4" value="1946"  >1946</option><option id="9075a7eb3ca3d51b510d2a5589d8c2f6" value="1947"  >1947</option><option id="763b1d109f3eeedc44641933672f1431" value="1948"  >1948</option><option id="8fc707467643d5c57068416a2a3e0329" value="1949"  >1949</option><option id="9c3bfa0f71e3241b3109d24d0a085af4" value="1950"  >1950</option><option id="f0cbce3351717c5d85dd5c51d78ac12d" value="1951"  >1951</option><option id="c66bb19e5bb0941f15561061433f8407" value="1952"  >1952</option><option id="99fa89b604f7692e4aae632dfda2bbb8" value="1953"  >1953</option><option id="76b5715008dabe62b807b5a64905f3bc" value="1954"  >1954</option><option id="fa1438bb050d62e372488e7077de40b7" value="1955"  >1955</option><option id="80117a8f071d7782f314f749f97359e3" value="1956"  >1956</option><option id="56c8afbeb5e44bfaf9807d2d6ef73dee" value="1957"  >1957</option><option id="9ed251a9075647017736ff1841ba4292" value="1958"  >1958</option><option id="aaa80f87981e64cef5a35a9509417c28" value="1959"  >1959</option><option id="335ef454ee8512fc7b624ccf133fe742" value="1960"  >1960</option><option id="d6f55a5e41c00aa2f75c12d4e9916766" value="1961"  >1961</option><option id="5ca57b97f5a2f048e13b1aa65b9b455d" value="1962"  >1962</option><option id="39786181f968f187f2f76a6a7c4e34ac" value="1963"  >1963</option><option id="2b8c8228ec7445270151a3b3bbcbd0e2" value="1964"  >1964</option><option id="ec5ecf736b84af717860dc8de6fc81a1" value="1965"  >1965</option><option id="092ef7f687cf36996ac4caa11a1e0db6" value="1966"  >1966</option><option id="ca585fb2d3d0af1fdd603119683c3b03" value="1967"  >1967</option><option id="5cd79c793cc3849041126c5315407cc5" value="1968"  >1968</option><option id="418e6cb1fb952e4e1b0a80b52bb81296" value="1969"  >1969</option><option id="a6ffcb37fa0d1979472979986abc7bd2" value="1970"  >1970</option><option id="f16ae5844f9930b1777f1091e5c0ba5b" value="1971"  >1971</option><option id="8b0d33c34e2a3a89c0ff345dfb4ee02c" value="1972"  >1972</option><option id="57b26fcc734ad2218baddfa8a879febc" value="1973"  >1973</option><option id="8397234d054b755e2a09ea53f0eeb16d" value="1974"  >1974</option><option id="b79915ff2bfa7c328453e74625622e08" value="1975"  >1975</option><option id="3beeecb3f85683c3113c490d0764ec86" value="1976"  >1976</option><option id="de1428c9bd79fb230a9d347250c882ae" value="1977"  >1977</option><option id="42e24022963da86efe8d00fa5d0b26eb" value="1978"  >1978</option><option id="e97862ddc98605ba1a3a26d249a4ee59" value="1979"  >1979</option><option id="898cf38bfd2ae94eb3abf0e7ea09253c" value="1980"  >1980</option><option id="2a00c35205656d0129fd51577c6ef826" value="1981"  >1981</option><option id="a49a1b467b35bc8bc0b46095d5059512" value="1982"  >1982</option><option id="2d73c5440a57f588bb843d3befb938fb" value="1983"  >1983</option><option id="863cbe0bc1e089a777d23dfb81afb694" value="1984"  >1984</option><option id="f4026783f6628bc56f1d50c453a3e450" value="1985"  >1985</option><option id="4cacee68cc601c06d481397d666b4b97" value="1986"  >1986</option><option id="5a4866658ff4f8fd7379f7594f745f33" value="1987"  >1987</option><option id="89627c23615d36eb34fdbf45c96cad83" value="1988"  >1988</option><option id="2fddd861079b1ca6af2dbdd378d6dc37" value="1989"  >1989</option><option id="9a8c2613b98938bc2531da3ce9b90c84" value="1990"  >1990</option><option id="fd7c924b6319d41da9135e5990e305e7" value="1991"  >1991</option><option id="f8960b1a5acd282afc4ded0c601da44e" value="1992"  >1992</option><option id="ef8775814f15a1d3085ef9b4c6cb7b8a" value="1993"  >1993</option><option id="920ac9a3f4a62f5a086aabe52591dc37" value="1994"  >1994</option><option id="7e62667bf31f06bad0e3c14d478e4149" value="1995"  >1995</option><option id="e939eb177bcbe4cfbf25423c59ed253d" value="1996"  >1996</option><option id="9cc7949dd8cd42c2dded1cc371b01317" value="1997"  >1997</option><option id="80f0c926cd51efc4a7565bca6da13240" value="1998"  >1998</option><option id="75945f46f47a654584b7722389fc3944" value="1999"  >1999</option><option id="53f9d1495a68c4c13fdc32f61e751081" value="2000"  >2000</option><option id="5fd0162634a44b80ac98a7ec65b25141" value="2001"  >2001</option><option id="e10a41e81082c5b07a93d52cca4252a9" value="2002"  >2002</option><option id="365815b69d1b05c9f47bdb77082dfde7" value="2003"  >2003</option><option id="71ae074fe1d2420cc2cd580b612a2460" value="2004"  >2004</option><option id="3975b09f646fc98bf66ac3e72aa61ce9" value="2005"  >2005</option><option id="4e0f893867f4a410cfc50f2f0f5cba8a" value="2006"  >2006</option><option id="f693493c2da2144938ac450d050742b8" value="2007"  >2007</option><option id="87ad8928c16f01c356073f3769ce4c0f" value="2008"  >2008</option><option id="d3c2db38942a0b5f5bb7800a1d7ea118" value="2009"  >2009</option><option id="dd6699ddbc1419fb6a718547bb3189b7" value="2010"  >2010</option><option id="0417f5c5cdde3f1a764b35478645eca0" value="2011"  >2011</option><option id="2cd58a28344ff82b43a361766a66276f" value="2012"  >2012</option><option id="8fdf24b7c1cf8994e0d16899a2585e01" value="2013"  selected="selected" >2013</option><option id="94867072f18a733cd72d16235d7c67b4" value="2014"  >2014</option><option id="bbb0477dd92537e99cf46f1b777dbd9e" value="2015"  >2015</option></select><p class="help-block"></p></div></td>
                                 </tr>

                                              </table>

                                          </div>

                                      </div>
                                      <div class="row"  >
                                          <div class="col-md-4 col-sm-12 col-xs-12 col-lg-4"  >

                                          </div>
                                          <div class="col-md-2 col-sm-12 col-xs-12 col-lg-2"  >
                                              <button  name="add" value="Add More" class=" btn btn-default btn-block"  type="button"  >Add More</button>

                                          </div>
                                          <div class="col-md-2 col-sm-12 col-xs-12 col-lg-2"  >
                                              <button  name="remove" value="Remove Last Row" class=" btn btn-default btn-block"  type="button"  >Remove Last Row</button>

                                          </div>

                                      </div>

                                  </div>

                              </div>

                          </div>

                      </div>
                      <div class="row"  >
                          <div class="box box-primary box-solid"  >
                        <div class="box-body">
                            <div  class="row"  >
                                <div class="form-group col-md-3 col-lg-3"  >
                                    <label class="control-label"    >Email</label>
                                    <input  name="email" value="saurabh6918@cse.ism.ac.in" class="form-control"  type="email" required="required"  />
                                    <p class="help-block"></p>

                                </div>
                                <div class="form-group col-md-3 col-lg-3"  >
                                    <label class="control-label"    >Mobile No.</label>
                                    <input id="mobile" name="mobile" value="8797900357" class="form-control"  required="required"  />
                                    <p class="help-block"></p>

                                </div>
                                <div  class="row"  >
                                    <div class="box box-solid box-primary"  >
                                        <div class="box-header" >
                                            <h3 class="box-title">Profile Pic</h3>

                                        </div>
                                        <div class="box-body">
                                            <div  class="row"  >
                                                <div  class="col-md-4 col-sm-12 col-xs-12 col-lg-4"  >

                                                </div>
                                                <div  class="col-md-4 col-sm-12 col-xs-12 col-lg-4"  >
                                                    <img src=""  width="145" height="150"/>

                                                </div>

                                            </div>
                                            <div class="row"  >
                                                <div class="form-group image-picker col-md-12 col-lg-12"  >
                                                    <div class="input-group">
                                                        <input  name="photo" class="form-control no-padding"  accept="image/*" style="padding: 0; height: 60px;"  type="file"  />
                                                        <div class="input-group-addon">
                                                            <span>
                                                                <img style="height: 58px; max-width: 200px !important;" src="" />

                                                            </span>

                                                        </div>

                                                    </div>
                                                    <p class="help-block"></p>

                                                </div>
		<script type="text/javascript">
		    $(document).ready(function () {
		        $("#photo").on("change", function (event) {
		            var input = event.target;
		            var reader = new FileReader();
		            reader.onload = function () {
		                var dataURL = reader.result;
		                $("#photo").parent().find("img").attr("src", dataURL);
		            };
		            reader.readAsDataURL(input.files[0]);
		        });
		    });

		</script>
		</div>
</div>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            </div>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 </div>
                      <div class="row"  >
                          <div class="col-md-5 col-sm-12 col-xs-12 col-lg-5"  >

                          </div>
                          <button id="submit_button_id" value="Submit" class=" btn btn-primary"  type="submit"  >Submit</button>

                      </div>
                      <div class="row"  >
                          <div class="col-md-11 col-sm-12 col-xs-12 col-lg-11"  >

                          </div>
                          <a href=  >
                          <button class=" btn btn-primary"  type="button"  ></button>

                          </a>

                      </div>                
                      </section><!-- /.content -->
</div>

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
