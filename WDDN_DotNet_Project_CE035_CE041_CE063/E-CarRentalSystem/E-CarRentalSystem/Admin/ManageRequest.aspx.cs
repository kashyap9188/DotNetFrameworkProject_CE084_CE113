using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.Admin
{
    public partial class ManageRequest : System.Web.UI.Page
    {
        protected List<Models.Request> all_reqs;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == null || Session["admin"] == null)
            {
                Session["page_msg"] = "Please Login as admin to access Manage-Request page...";
                Response.Redirect("~/Login.aspx");
            }
            if(Session["action_msg"] != null)
            {
                msg_label.Text = Session["action_msg"].ToString();
                Session["action_msg"] = null;
            }
            AppDbContext context = new AppDbContext();
            all_reqs = context.requests.Where(r => r.Status == "Pending").ToList();
        }

    }
}