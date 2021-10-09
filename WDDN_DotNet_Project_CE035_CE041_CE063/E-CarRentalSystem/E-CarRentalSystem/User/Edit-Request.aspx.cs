using E_CarRentalSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_CarRentalSystem.User
{

    public partial class Edit_Request : System.Web.UI.Page
    {
        protected Models.Request req;
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
                    Response.Redirect("~/User/MyRequest");
                }
                else
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    AppDbContext context = new AppDbContext();
                    req = context.requests.Find(id);
                    Name_labelId.Text = req.car.Name;
                    Desc_labelId.Text = req.car.Description;
                    Fuel_labelId.Text = req.car.FuelType;
                    Rate_labelId.Text = req.car.Rate.ToString();
                    Seats_labelId.Text = req.car.No_Seat.ToString();
                }
            }
        }

        protected void edit_button_Click(object sender, EventArgs e)
        {
            if(Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                AppDbContext context = new AppDbContext();
                Models.Request change_req = context.requests.Find(id);
                change_req.StartingDate = Convert.ToDateTime(startingDate_Id.Text);
                change_req.EndingDate = Convert.ToDateTime(endingDate_Id.Text);
                context.SaveChanges();

                Session["req_msg"] = "Request is updated...";
                Response.Redirect("~/User/MyRequest.aspx");
            }
        }

        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/MyRequest.aspx");
        }
    }
}