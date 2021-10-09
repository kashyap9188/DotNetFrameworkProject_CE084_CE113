<%@ Page Title="Edit-Car" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit-Car.aspx.cs" Inherits="E_CarRentalSystem.Admin.Edit_Car" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Edit Car</h1>
    <hr />

    <div class="container">
        <label>Name : </label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="Name_Required_validator" runat="server" ControlToValidate="Name_textboxId" Display="Dynamic" ErrorMessage="*Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="Name_textboxId" runat="server" Width="100%" Height="40px" Font-Size="Large"></asp:TextBox>
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
         <br />
         <asp:FileUpload ID="carphoto_upload" runat="server" />
         <br /><br />

         <asp:Button ID="editCar_button" runat="server" Text="Edit Car" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" OnClick="editCar_button_Click" />
         &nbsp;&nbsp;&nbsp;
         <asp:Button ID="back_button" runat="server" Text="Back" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" CausesValidation="False" OnClick="back_button_Click" />

    </div>


</asp:Content>