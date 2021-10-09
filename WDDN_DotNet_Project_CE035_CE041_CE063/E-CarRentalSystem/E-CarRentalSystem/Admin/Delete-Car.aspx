<%@ Page Title="Delete-Car" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete-Car.aspx.cs" Inherits="E_CarRentalSystem.Admin.Delete_Car" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Delete Car</h1>
    <hr />

    <img src=<%= car.PhotoPath %> style="width:300px; height:300px;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="vl" style="border-left: 1px solid; height:300px; display:inline-block; vertical-align:top;"></div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <div style="display:inline-block; vertical-align:top">
        
        <table class="nav-justified">
            <tr>
                <td style="width: 142px"><label>Name:</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Name_labelId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>Description:</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Desc_labelId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>Fuel Type:</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Fuel_labelId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>Rate:</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Rate_labelId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>seats:</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Seats_labelId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        
        <br />
        <br />

        <h4>Are you sure to delete a car ?</h4>

        <asp:Button ID="delete_button" runat="server" Text="Delete" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Width="100px" OnClick="delete_button_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="back_button" runat="server" Text="Back" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Width="100px" CausesValidation="False" OnClick="back_button_Click"/>
        <br />
    </div>

</asp:Content>
