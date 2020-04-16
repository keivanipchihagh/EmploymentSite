<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Emplyment._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emplyment | Home</title>
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
                <h2 style="margin-top: 0px; font-weight: bold"><span style="font-size: 15px">──────────────</span> <span id="title" runat="server" style="color: rgba(0, 0, 0, 0.70)">Home</span> <span style="font-size: 15px">──────────────</span></h2>
            </div>
            <span id="description" runat="server" style="font-size: 13px; font-weight: bold; margin-bottom: 1%">Interactive <u>ASP.NET</u> & <u>BootStrap</u> Project</span>
            <div class="container" style="width: 100%">
                <div class="container" style="width: 100%; margin-bottom: 15px">
                    <form id="home_form" name="home_form" method="post" action="#" runat="server"></form>
                    <input id="entry" class="button" name="entry" runat="server" type="submit" value="Enter Your Infomarion" style="width: 75%" onclick="document.getElementById('home_form').action = 'entry.aspx'; home_form.submit()" />
                    <input id="display" class="button" name="display" runat="server" type="submit" value="Display" style="width: 75%" onclick="document.getElementById('home_form').action = 'display.aspx'; home_form.submit()" />
                </div>
            </div>
        </div>
        <div style="color: white; padding: 5px; text-align: right; font-size: 10px">Developed By: Keivan Ipchi Hagh</div>
    </div>
    <div class="col-lg-4"></div>
</body>
</html>