<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_CarRentalSystem.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Login Here!!</h1>
    <hr />
    <p>
        <asp:Label ID="msg_label" runat="server" ForeColor="#00CC00"></asp:Label>
    </p>

    <div class="container">
        <label>Email :</label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="Email_TextboxId" ErrorMessage="*Email is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="Email_regx_validator" runat="server" ControlToValidate="Email_TextboxId" Display="Dynamic" ErrorMessage="*Enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="Email_TextboxId" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="Email"></asp:TextBox>
        <br /><br />

        <label>Password :</label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="Password_textboxId" Display="Dynamic" ErrorMessage="*Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="Password_textboxId" runat="server" Width="100%" Height="40px" Font-Size="Large" MaxLength="10" TextMode="Password"></asp:TextBox>
        <br /><br />

        
        <asp:Button ID="login_button" runat="server" Text="Login" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Width="80px" OnClick="login_button_Click" />
            <br />
            <br />
            <p style="font-size:medium; font-weight:400">New User ?
            <asp:HyperLink ID="Register_linkId" runat="server" CssClass="alert-link" Font-Size="Medium" ForeColor="#000099" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
            </p>

    </div>
            
</asp:Content>
