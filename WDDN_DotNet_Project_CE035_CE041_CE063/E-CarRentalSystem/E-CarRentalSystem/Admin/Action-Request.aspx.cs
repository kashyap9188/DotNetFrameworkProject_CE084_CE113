using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.Admin
{
    public partial class Action_Request : System.Web.UI.Page
    {
        protected Models.Request req;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["isLogin"] == null || Session["admin"] == null)
                {
                    Session["page_msg"] = "Please Login as admin to access Action page...";
                    Response.Redirect("~/Login.aspx");
                }
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/Admin/ManageRequest");
                }
                int id = int.Parse(Request.QueryString["id"]);
                AppDbContext context = new AppDbContext();
                req = context.requests.Find(id);

                UserName_labelId.Text = req.user.Name;
                CarName_labelId.Text = req.car.Name;
                Desc_labelId.Text = req.car.Description;
                Fuel_labelId.Text = req.car.FuelType;
                Rate_labelId.Text = req.car.Rate.ToString();
                Seats_labelId.Text = req.car.No_Seat.ToString();
                Starting_date_labelId.Text = req.StartingDate.ToString();
                Ending_date_labbelId.Text = req.EndingDate.ToString();
            }
        }

        protected void accept_button_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            AppDbContext context = new AppDbContext();
            Models.Request pending_req = context.requests.Find(id);

            pending_req.Status = "Accepted";
            context.SaveChanges();

            Session["action_msg"] = "Car Request is Accepted...";
            Response.Redirect("~/Admin/ManageRequest");
        }

        protected void decline_button_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            AppDbContext context = new AppDbContext();
            Models.Request pending_req = context.requests.Find(id);

            pending_req.Status = "Declined";
            context.SaveChanges();

            Session["action_msg"] = "Car Request is Declined...";
            Response.Redirect("~/Admin/ManageRequest");
        }

        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ManageRequest");
        }

    }
}