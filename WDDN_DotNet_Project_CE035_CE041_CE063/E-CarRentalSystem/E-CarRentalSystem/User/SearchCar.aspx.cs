using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.User
{
    public partial class SearchCar : System.Web.UI.Page
    {
        protected List<Car> allcars;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["isLogin"] == null || Session["admin"] != null)
            {
                Session["page_msg"] = "Please Login to access Search-Car page...";
                Response.Redirect("~/Login.aspx");
            }

            AppDbContext context = new AppDbContext();
            this.allcars = context.cars.ToList();

        }

        protected void Search_buttonId_Click(object sender, EventArgs e)
        {
            if (SearchBarID.Text != "")
            {
                var seat = int.Parse(SearchBarID.Text);
                AppDbContext context = new AppDbContext();
                this.allcars = context.cars.Where(c => c.No_Seat == seat).ToList();
            }
        }
    }
}