using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["isLogin"] != null)
            {
                Session["isLogin"] = null;                
            }
            if(Session["admin"] != null)
            {
                Session["admin"] = null;
            }
            if (Session["user_email"] != null)
            {
                Session["user_email"] = null;
            }
            Response.Redirect("~/Login.aspx");
        }
    }
}