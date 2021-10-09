using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.Admin
{
    public partial class Add_Car : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == null || Session["admin"] == null)
            {
                Session["page_msg"] = "Please Login as admin to access Add-Car page...";
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void addCar_button_Click(object sender, EventArgs e)
        {
            string img_path = "/images/" + Guid.NewGuid().ToString() + "_" + carphoto_upload.PostedFile.FileName;
            carphoto_upload.SaveAs(Server.MapPath("~"+img_path));

            AppDbContext context = new AppDbContext();
            Car car = new Car
            {
                Name = name_textbox.Text,
                No_Seat = int.Parse(seat_textboxId.Text),
                Rate = int.Parse(Rate_textboxId.Text),
                FuelType = fueltype_dropdown.SelectedValue,
                Description = desc_textbox.Text,
                PhotoPath = img_path
            };
            context.cars.Add(car);
            context.SaveChanges();

            Session["car_msg"] = "Car is successfully Added...";
            Response.Redirect("~/Admin/ManageCar");
        }

        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ManageCar");
        }
    }
}