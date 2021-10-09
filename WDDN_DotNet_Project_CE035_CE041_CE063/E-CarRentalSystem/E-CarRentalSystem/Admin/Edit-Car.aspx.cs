using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.Admin
{
    public partial class Edit_Car : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["isLogin"] == null || Session["admin"] == null)
                {
                    Session["page_msg"] = "Please Login as admin to access Edit-Car page...";
                    Response.Redirect("~/Login.aspx");
                }
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/Admin/ManageCar");
                }
                else
                {
                    int id = int.Parse(Request.QueryString["id"].ToString());
                    AppDbContext context = new AppDbContext();
                    Car old_car = context.cars.Find(id);
                    Name_textboxId.Text = old_car.Name;
                    desc_textbox.Text = old_car.Description;
                    seat_textboxId.Text = old_car.No_Seat.ToString();
                    Rate_textboxId.Text = old_car.Rate.ToString();
                    fueltype_dropdown.SelectedValue = old_car.FuelType;
                }
            }
        }

        protected void editCar_button_Click(object sender, EventArgs e)
        {
            if(Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                AppDbContext context = new AppDbContext();

                var changed_car = context.cars.First(c => c.Id == id);

                changed_car.Name = Name_textboxId.Text;
                changed_car.Description = desc_textbox.Text;
                changed_car.No_Seat = int.Parse(seat_textboxId.Text);
                changed_car.Rate = int.Parse(Rate_textboxId.Text);
                changed_car.FuelType = fueltype_dropdown.SelectedValue;
                
                if (carphoto_upload.HasFile)
                {
                    File.Delete(Server.MapPath("~" + changed_car.PhotoPath));

                    string img_path = "/images/" + Guid.NewGuid().ToString() + "_" + carphoto_upload.PostedFile.FileName;
                    carphoto_upload.SaveAs(Server.MapPath("~" + img_path));
                    changed_car.PhotoPath = img_path;
                }
                
                context.SaveChanges();

                Session["car_msg"] = "Car is updated...";
                Response.Redirect("~/Admin/ManageCar");
            }
        }

        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ManageCar");
        }
    }
}