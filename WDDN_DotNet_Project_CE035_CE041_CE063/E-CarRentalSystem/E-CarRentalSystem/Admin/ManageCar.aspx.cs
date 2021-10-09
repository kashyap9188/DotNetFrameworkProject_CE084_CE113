using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.Admin
{
    public partial class ManageCar : System.Web.UI.Page
    {
        protected List<Car> allcars;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == null || Session["admin"] == null)
            {
                Session["page_msg"] = "Please Login as admin to access Manage-Car page...";
                Response.Redirect("~/Login.aspx");
            }
            if(Session["car_msg"] != null)
            {
                msg_label.Text = Session["car_msg"].ToString();
                Session["car_msg"] = null;
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

        protected void addCar_buttonId_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Add-Car");
        }


    }
}