using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.User
{
    public partial class MyRequest : System.Web.UI.Page
    {
        protected List<Models.Request> reqs;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == null || Session["admin"] != null)
            {
                Session["page_msg"] = "Please Login to access My-Request page...";
                Response.Redirect("~/Login.aspx");
            }
            if(Session["req_msg"] != null)
            {
                Msg_Id.Text = Session["req_msg"].ToString();
                Session["req_msg"] = null;
            }
            string user_email = Session["user_email"].ToString();
            AppDbContext context = new AppDbContext();
            reqs = context.requests.Where(r => r.user.Email==user_email).ToList();
        }

    }
}