<%@ Page Title="Add-Car" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add-Car.aspx.cs" Inherits="E_CarRentalSystem.Admin.Add_Car" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Add Car</h1>
    <hr />

     <div class="container">
        <label>Name : </label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="Name_Required_validator" runat="server" ControlToValidate="name_textbox" Display="Dynamic" ErrorMessage="*Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="name_textbox" runat="server" Width="100%" Height="40px" Font-Size="Large"></asp:TextBox>
        <br /><br />

        <label>Description : </label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="desc_textbox" Display="Dynamic" ErrorMessage="*Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="desc_textbox" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="MultiLine"></asp:TextBox>
        <br /><br />
        
        <label>Seats : </label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="seat_required_validator" runat="server" ControlToValidate="seat_textboxId" Display="Dynamic" ErrorMessage="*Seat is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="seat_textboxId" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="Number"></asp:TextBox>
        <br /><br />
         
        <label>Rate (/km) : </label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rate_required_validator" runat="server" ControlToValidate="Rate_textboxId" Display="Dynamic" ErrorMessage="*Rate is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="Rate_textboxId" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="Number"></asp:TextBox>
        <br /><br />

        <label>Fuel Type : </label>&nbsp;&nbsp;
         <br />
         <asp:DropDownList ID="fueltype_dropdown" runat="server" Height="40px" Width="100px" Font-Size="Large">
             <asp:ListItem>Petrol</asp:ListItem>
             <asp:ListItem>Diesel</asp:ListItem>
         </asp:DropDownList>
        <br /><br />

         <label>Upload Car Photo : </label>&nbsp;&nbsp;
         <asp:RequiredFieldValidator ID="photo_required_validator" runat="server" ControlToValidate="carphoto_upload" Display="Dynamic" ErrorMessage="*Upload the photo" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         <asp:FileUpload ID="carphoto_upload" runat="server" />
         <br /><br />

         <asp:Button ID="addCar_button" runat="server" Text="Add Car" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" OnClick="addCar_button_Click" />
         &nbsp;&nbsp;&nbsp;
         <asp:Button ID="back_button" runat="server" Text="Back" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" CausesValidation="False" OnClick="back_button_Click" />

    </div>


</asp:Content>