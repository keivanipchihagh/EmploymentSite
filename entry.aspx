<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry.aspx.cs" Inherits="Emplyment.entry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emplyment | Entry</title>
    <link href="StyleSheets/styleSheet.css" type="text/css" rel="stylesheet" />
    <script src="Scripts/JavaScript.js" type="text/javascript"></script>
    <link href="favicon.ico" rel="icon" type="image/gif" />
    <!-- BootStrap CSS, JavaScript, JQuera Libraries -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body id="body" onload="setCenter()" onresize="setCenter()">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
        <div id="panel" class="panel" style="margin-bottom: 0px">
            <div style="width: 100%; height: 10%">
                <h2 style="margin-top: 0px; font-weight: bold"><span style="font-size: 15px">──────────────</span> <span id="title" runat="server" style="color: rgba(0, 0, 0, 0.70)">Entry</span> <span style="font-size: 15px">──────────────</span></h2>
            </div>
            <span id="description" runat="server" style="font-size: 13px; font-weight: bold; margin-bottom: 1%">We respect our clients; No personal Information is collected</span>
            <div class="container" style="width: 100%">
                <form id="entry_form" name="submit_form" action="preview.aspx" runat="server" method="post">
                    <div class="row" style="margin: auto">

                        <input id="entry_firstname" name="entry_firstname" class="textBox" runat="server" type="text" placeholder="First Name" onkeyup="validate(this)" required="required" />
                        <input id="entry_lastname" name="entry_lastname" class="textBox" runat="server" type="text" placeholder="Last Name" onkeyup="validate(this)" required="required" />
                    </div>
                    <div class="row" style="width: 75%; margin: auto; margin-top: 5px">
                        <span style="font-size: 18px; margin-right: 34%">Gender: </span>
                        <input id="entry_male_sex" name="entry_sex" runat="server" type="radio" value="Male" /><label for="entry_male_sex" style="margin-right: 20px">&nbsp Male</label>
                        <input id="entry_female_sex" name="entry_sex" runat="server" type="radio" value="Female" /><label for="entry_female_sex">&nbsp Female</label>
                    </div>

                    <div class="row" style="width: 75%; margin: auto; margin-top: 5px">
                        <span style="font-size: 18px; margin-right: 40%">Marital Status: </span>
                        <input id="entry_marital_status" name="entry_marital_status" runat="server" type="checkbox" value="Married" /><label for="entry_marital_status">&nbsp Married</label>
                    </div>

                    <div class="row" style="width: 75%; margin: auto; margin-top: 5px">
                        <span style="font-size: 18px; margin-right: 19%">Education Degree: </span>
                        <select id="entry_education" runat="server" name="entry_education">
                            <option>Deploma</option>
                            <option>Post Deploma</option>
                            <option>Bachelor</option>
                            <option>Master</option>
                            <option>PHD</option>
                            <option>Post PHD</option>
                        </select>
                    </div>

                    <div class="row" style="width: 75%; margin: auto; margin-top: 5px">
                        <span style="font-size: 18px; margin-right: 39%">Favorite Colors: </span>
                        <select id="entry_fav_color" runat="server" name="entry_fav_color" multiple>
                            <option>Yellow</option>
                            <option>Blue</option>
                            <option>Red</option>
                            <option>Green</option>
                            <option>Purple</option>
                        </select>
                    </div>
                </form>
                <div class="container" style="width: 100%; margin-bottom: 15px">
                    <input id="submit" class="button" name="submit" runat="server" type="submit" value="Preview" style="width: 75%" onclick="validateSubmit()" />
                    <input id="back" class="button" name="back" runat="server" type="submit" value="Back" style="width: 75%" onclick="window.location = 'default.aspx'" />
                </div>
            </div>
        </div>
        <div style="color: white; padding: 5px; text-align: right; font-size: 10px">Developed By: Keivan Ipchi Hagh</div>
    </div>
    <div class="col-lg-4"></div>
</body>
</html>
