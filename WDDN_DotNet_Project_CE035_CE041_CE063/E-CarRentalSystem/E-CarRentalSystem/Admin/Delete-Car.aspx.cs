using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.Admin
{
    public partial class Delete_Car : System.Web.UI.Page
    {
        protected Car car;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["isLogin"] == null || Session["admin"] == null)
                {
                    Session["page_msg"] = "Please Login as admin to access Delete-Car page...";
                    Response.Redirect("~/Login.aspx");
                }
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/Admin/ManageCar");
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

        protected void delete_button_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            AppDbContext context = new AppDbContext();

            var delete_car = context.cars.First(c => c.Id == id);

            File.Delete(Server.MapPath("~" + delete_car.PhotoPath));
            context.cars.Remove(delete_car);
            context.SaveChanges();

            Session["car_msg"] = "Car is deleted...";
            Response.Redirect("~/Admin/ManageCar");
        }

        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ManageCar");
        }
    }
}