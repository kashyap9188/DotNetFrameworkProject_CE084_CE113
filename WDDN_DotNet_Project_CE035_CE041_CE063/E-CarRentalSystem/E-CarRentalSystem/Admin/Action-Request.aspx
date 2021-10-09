<%@ Page Title="Action-Request Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Action-Request.aspx.cs" Inherits="E_CarRentalSystem.Admin.Action_Request" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Take a Action</h1>
    <hr />
    
    <img src=<%= req.car.PhotoPath %> style="width:300px; height:300px;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="vl" style="border-left: 1px solid; height:400px; display:inline-block; vertical-align:top;"></div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <div style="display:inline-block; vertical-align:top">
        
        <table class="nav-justified">
            <tr>
                <td style="width: 142px"><label>User Name:</label>&nbsp;</td>
                <td>
                    <asp:Label ID="UserName_labelId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>Car Name:</label>&nbsp;</td>
                <td>
                    <asp:Label ID="CarName_labelId" runat="server" Text="Label"></asp:Label>
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
            <tr>
                <td style="width: 142px"><label>Starting Date:</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Starting_date_labelId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>Ending Date:</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Ending_date_labbelId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        
        <br />
        <br />

        

        <asp:Button ID="accept_button" runat="server" Text="Accept" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Width="100px" OnClick="accept_button_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="decline_button" runat="server" Text="Decline" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Width="100px" OnClick="decline_button_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="back_button" runat="server" Text="Back" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Width="100px" CausesValidation="False" OnClick="back_button_Click"/>
        <br />
    </div>

</asp:Content>