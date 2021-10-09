using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.User
{
    public partial class Add_Request : System.Web.UI.Page
    {
        protected Car car;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["isLogin"] == null || Session["admin"] != null)
                {
                    Session["page_msg"] = "Please Login to access Add-Request page...";
                    Response.Redirect("~/Login.aspx");
                }
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/User/SearchCar");
                }
                int id = int.Parse(Request.QueryString["id"].ToString());
                AppDbContext context = new AppDbContext();
                car = context.cars.Find(id);
                Name_labelId.Text = car.Name;
                Desc_labelId.Text = car.Description;
                Fuel_labelId.Text = car.FuelType;
                Rate_labelId.Text = car.Rate.ToString();
                Seats_labelId.Text = car.No_Seat.ToString();
            }
        }

        protected void request_button_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            string user_emil = Session["user_email"].ToString();
            AppDbContext context = new AppDbContext();
            var car = context.cars.FirstOrDefault(c => c.Id == id);
            var user = context.users.FirstOrDefault(u => u.Email == user_emil);

            Models.Request req = new Models.Request()
            {
                StartingDate = Convert.ToDateTime(startingDate_Id.Text),
                EndingDate = Convert.ToDateTime(endingDate_Id.Text),
                Status = "Pending"
            };
            req.car = car;
            req.user = user;
            context.requests.Add(req);
            context.SaveChanges();

            Session["req_msg"] = "Request is Added...";
            Response.Redirect("~/User/MyRequest.aspx");
        }
    }
}