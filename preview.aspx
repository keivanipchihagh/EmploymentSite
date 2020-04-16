<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="preview.aspx.cs" Inherits="Emplyment.preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emplyment | Preview</title>
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
                <h2 style="margin-top: 0px; font-weight: bold"><span style="font-size: 15px">──────────────</span> <span id="title" runat="server" style="color: rgba(0, 0, 0, 0.70)">Preview</span> <span style="font-size: 15px">──────────────</span></h2>
            </div>
            <span id="description" runat="server" style="font-size: 13px; font-weight: bold; margin-bottom: 1%">There is no going back, Double check your request!</span>
            <div class="container" style="width: 100%">
                <form id="preview_form" name="preview_form" method="post" action="entry.aspx" runat="server">
                    <input id="preview_firstname" name="firstname" runat="server" type="hidden" value="" />
                    <input id="preview_lastname" name="lastname" runat="server" type="hidden" value="" />
                    <input id="preview_sex" name="preview_sex" runat="server" type="hidden" value="" />
                    <input id="preview_marital_status" name="marital_status" runat="server" type="hidden" value="" />
                    <input id="preview_education" name="education" runat="server" type="hidden" value="" />
                    <input id="preview_fav_colors" name="fav_colors" runat="server" type="hidden" value="" />
                    <input id="fromPage" name="fromPage" runat="server" type="hidden" value="preview.aspx" />
                </form>
                <div id="information" name="information" runat="server" style="margin: auto; margin-top: 15px"></div>

                <div class="container" style="width: 100%; margin-bottom: 15px">
                    <input id="submit" class="button" name="submit" runat="server" type="submit" value="Submit" style="width: 75%" onclick="submit()" />
                    <input id="back" class="button" name="back" runat="server" type="submit" value="Back" style="width: 75%" onclick="preview_form.submit()" />
                </div>
            </div>
        </div>
        <div style="color: white; padding: 5px; text-align: right; font-size: 10px">Developed By: Keivan Ipchi Hagh</div>
    </div>        
    <div class="col-lg-4"></div>
</body>
</html>
