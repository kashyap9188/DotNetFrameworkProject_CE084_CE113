<%@ Page Title="Manage Cars" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageCar.aspx.cs" Inherits="E_CarRentalSystem.Admin.ManageCar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Manage Cars</h1>
    <center>
    <asp:TextBox ID="SearchBarID" runat="server" placeholder="Enter number of seats" Font-Size="Large" Height="40px" TextMode="Number" Width="400px"></asp:TextBox>&nbsp;
    <asp:Button ID="Search_buttonId" runat="server" BackColor="Black" BorderStyle="Solid" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Text="Search" OnClick="Search_buttonId_Click" />
    <br />
    <!--<asp:RequiredFieldValidator ID="search_required_validator" runat="server" Display="Dynamic" ErrorMessage="*Search Field is Required" ForeColor="Red" ControlToValidate="SearchBarID"></asp:RequiredFieldValidator>-->
    </center>
    <hr />
    <center>
    <asp:Button ID="addCar_buttonId" runat="server" BackColor="Black" BorderStyle="Solid" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Text="Add Car" OnClick="addCar_buttonId_Click" CausesValidation="False" />
    </center>
    <br />
    <center><h3 style="color:green;"><asp:Label ID="msg_label" runat="server" Text=""></asp:Label></h3>
    </center>
    <%if (allcars.Count == 0)
        {%>
            <center><h2>No Car Found !!</h2></center>
    <%} %>
    <div class="row">
    <% foreach (var car in allcars)
        {%>
        <div class="col-lg-3 col-md-6 col-sm-10 offset-md-0 offset-sm-1" style="margin-bottom: 10px;">
            <div class="panel panel-default ">
                <img src=<%= car.PhotoPath %> style="width:100%; height:200px;" />
                <div class="panel-body">
                    <b>Name:</b><p style="display:inline-block;">&nbsp;<%= car.Name %></p>&nbsp;&nbsp;&nbsp;
                    <b>Fuel Type:</b><p style="display:inline-block;">&nbsp;<%= car.FuelType %></p>
                    <br />
                    <b>Seat:</b><p style="display:inline-block;">&nbsp;<%= car.No_Seat %></p>&nbsp;&nbsp;&nbsp;
                    <b>Rate:</b><p style="display:inline-block;">&nbsp;&#8377;<%= car.Rate %>&nbsp;/km</p>
                    <br />
                    <a class="btn" style="background-color:black; color:white;" href=<%= "Edit-Car.aspx?id="+car.Id %>>Edit</a>
                    &nbsp;&nbsp;&nbsp;
                    <a class="btn" style="background-color:black; color:white;" href=<%= "Delete-Car.aspx?id="+car.Id %>>Delete</a>
                    <br />
                </div>
            </div>
        </div>
    <% } %>
    </div>
    

</asp:Content>
