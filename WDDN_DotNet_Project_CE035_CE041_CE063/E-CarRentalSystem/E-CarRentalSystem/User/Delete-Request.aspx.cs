using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.User
{
    public partial class Delete_Request : System.Web.UI.Page
    {
        protected Models.Request req;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["isLogin"] == null || Session["admin"] != null)
                {
                    Session["page_msg"] = "Please Login to access Delete-Request page...";
                    Response.Redirect("~/Login.aspx");
                }
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/User/MyRequest");
                }
                int id = int.Parse(Request.QueryString["id"].ToString());
                AppDbContext context = new AppDbContext();
                req = context.requests.Find(id);
                Name_labelId.Text = req.car.Name;
                Desc_labelId.Text = req.car.Description;
                Fuel_labelId.Text = req.car.FuelType;
                Rate_labelId.Text = req.car.Rate.ToString();
                Seats_labelId.Text = req.car.No_Seat.ToString();
                Starting_date_labelId.Text = req.StartingDate.ToString();
                Ending_date_labbelId.Text = req.EndingDate.ToString();
            }
        }

        protected void delete_button_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            AppDbContext context = new AppDbContext();
            Models.Request delete_req = context.requests.Find(id);
            context.requests.Remove(delete_req);
            context.SaveChanges();

            Session["req_msg"] = "Request is deleted...";
            Response.Redirect("~/User/MyRequest.aspx");
        }

        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/MyRequest.aspx");
        }

    }
}