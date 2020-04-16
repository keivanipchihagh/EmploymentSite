using System;

namespace Emplyment
{
    public partial class preview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Cache Control
            Response.CacheControl = "no-cache";
            Response.AddHeader("pragma", "no-cache");
            Response.Expires = -1;

            try
            {
                if (Request.Form["entry_firstname"] == null || Request.Form["entry_lastname"] == null || Request.Form["entry_education"] == null)
                    throw new Exception();

                // Data Flow
                string firstname = Request.Form["entry_firstname"];
                string lastname = Request.Form["entry_lastname"];
                string gender = (Request.Form["entry_sex"] == "Male") ? "Male" : "Female";
                string marital_status = Request.Form["entry_marital_status"];
                string education = Request.Form["entry_education"];
                string favoriteColors = Request.Form["entry_fav_color"];

                // Initialize
                preview_firstname.Value = firstname;
                preview_lastname.Value = lastname;
                preview_sex.Value = gender;
                preview_marital_status.Value = marital_status;
                preview_education.Value = education;
                preview_fav_colors.Value = favoriteColors;

                string result = "<p>I, ";
                if (gender == "Female" && marital_status == "Married")
                    result += "Ms.";
                else if (gender == "Female")
                    result += "Miss.";
                else if (gender == "Male")
                    result += "Mr.";

                result += firstname + " " + lastname + ", with a " + education + " degree & interested in";
                if (favoriteColors == null)
                    result += " no particular color at all";
                else
                {
                    string[] colors = favoriteColors.Split(',');
                    for (int i = 0; i < colors.Length; i++)
                        if (i != colors.Length - 1)
                            result += getColor(colors[i], ",");
                        else
                            result += getColor(colors[i], "");
                }

                information.InnerHtml += (result + ", agree to all terms of services and website policies.</p>");
            } catch(Exception) { Response.Redirect("default.aspx"); }
        }

        private string getColor(string color, string seperator)
        {
            switch(color)
            {
                case "Blue": return " <span style=\"color: blue\">Blue</span>" + seperator;
                case "Green": return " <span style=\"color: green\">Green</span>" + seperator;
                case "Yellow": return " <span style=\"color: yellow\">Yellow</span>" + seperator;
                case "Red": return " <span style=\"color: red\">Red</span>" + seperator;
                case "Purple": return " <span style=\"color: purple\">Purple</span>" + seperator;
                default: return "";
            }
        }
    }
}