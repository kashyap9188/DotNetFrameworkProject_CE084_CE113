using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["page_msg"] != null)
                {
                    msg_label.Text = Session["page_msg"].ToString();
                    Session["page_msg"] = null;
                }
                if (Session["register_msg"] != null)
                {
                    msg_label.Text = Session["register_msg"].ToString();
                    Session["register_msg"] = null;
                }
                if (Session["login_msg"] != null)
                {
                    msg_label.Text = Session["login_msg"].ToString();
                    Session["login_msg"] = null;
                }
            }
        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            if (Email_TextboxId.Text == "admin@admin.com" && Password_textboxId.Text == "admin")
            {
                Session["isLogin"] = "loggedIn";
                Session["admin"] = "Admin";
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                AppDbContext context = new AppDbContext();
                var user = context.users
                        .FirstOrDefault(u => u.Email == Email_TextboxId.Text && u.Password == Password_textboxId.Text);
                if (user != null)
                {
                    Session["user_email"] = user.Email;
                    Session["isLogin"] = "LoggedIn";
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    Session["login_msg"] = "Invalid Email/Password";
                    Response.Redirect("~/Login.aspx");
                }
            }
            
        }
    }
}