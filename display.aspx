<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display.aspx.cs" Inherits="Emplyment.display" %>

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
    <div class="col-lg-2"></div>
    <div class="col-lg-8">
        <div id="panel" class="panel" style="margin-bottom: 0px">
            <div style="width: 100%; height: 10%">
                <h2 style="margin-top: 0px; font-weight: bold"><span style="font-size: 15px">──────────────</span> <span id="title" runat="server" style="color: rgba(0, 0, 0, 0.70)">Display</span> <span style="font-size: 15px">──────────────</span></h2>
            </div>
            <span id="description" runat="server" style="font-size: 13px; font-weight: bold; margin-bottom: 1%">This is all we could gather at the moment</span>
            <div id="display_table" name="display_table" runat="server" style="width: 90%; margin: auto; overflow: auto">

            </div>
            <input id="back" class="button" name="display" runat="server" type="submit" value="Home" style="width: 20%; margin-bottom: 15px" onclick="window.location = 'default.aspx'" />
        </div>
        <div style="color: white; padding: 5px; text-align: right; font-size: 10px">Developed By: Keivan Ipchi Hagh</div>
    </div>
    <div class="col-lg-2"></div>
</body>
</html>