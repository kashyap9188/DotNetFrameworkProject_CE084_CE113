using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_button_Click(object sender, EventArgs e)
        {
            AppDbContext context = new AppDbContext();
            Models.User new_user = new Models.User
            {
                Name = Name_textbox.Text,
                Email = Email_textbox.Text,
                Password = Password_textbox.Text,
                MobileNo = MobNo_textbox.Text,
                Address = Address_textbox.Text
            };

            context.users.Add(new_user);
            context.SaveChanges();

            Session["register_msg"] = "Registerd successfully !!";
            Response.Redirect("~/Login.aspx");
        }
    }
}