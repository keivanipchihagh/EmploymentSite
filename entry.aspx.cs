using System;

namespace Emplyment
{
    public partial class entry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["fromPage"] == "preview.aspx")
            {
                entry_firstname.Value = Request.Form["preview_firstname"];
                entry_lastname.Value = Request.Form["preview_lastname"];

                if (Request.Form["preview_sex"] == "Male")
                    entry_male_sex.Checked = true;
                else if (Request.Form["preview_sex"] == "Female")
                    entry_female_sex.Checked = true;

                if (Request.Form["preview_marital_status"] != "")
                    entry_marital_status.Checked = true;

                entry_education.Value = Request.Form["preview_education"];

                string[] colors = Request.Form["preview_fav_colors"].Split(',');
                foreach (string color in colors)
                    entry_fav_color.Items.FindByValue(color).Selected = true;
            }
        }
    }
}