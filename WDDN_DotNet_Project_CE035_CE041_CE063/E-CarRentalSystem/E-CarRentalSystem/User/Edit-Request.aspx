<%@ Page Title="Edit-Request Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit-Request.aspx.cs" Inherits="E_CarRentalSystem.User.Edit_Request" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Edit Request</h1>
    <hr />
    
    <img src=<%= req.car.PhotoPath %> style="width:300px; height:300px;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="vl" style="border-left: 1px solid; height:400px; display:inline-block; vertical-align:top;"></div>
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

        <label>Starting Date :</label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="startingDate_required_validator" runat="server" ControlToValidate="startingDate_Id" Display="Dynamic" ErrorMessage="*Starting Date is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="startingDate_Id" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="DateTimeLocal"></asp:TextBox>
        <br />
        <br />

        <label>Ending Date :</label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="endingDate_required_validator" runat="server" ControlToValidate="endingDate_Id" Display="Dynamic" ErrorMessage="*Ending Date is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="endingDate_Id" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="DateTimeLocal"></asp:TextBox>
        <br />
        <br />
        <br />

        <asp:Button ID="edit_button" runat="server" Text="Edit" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Width="100px" OnClick="edit_button_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="back_button" runat="server" Text="Back" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Width="100px" CausesValidation="False" OnClick="back_button_Click" />
        <br />
    </div>

</asp:Content>