<%@ Page Title="Register Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="E_CarRentalSystem.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Register Yourself !!</h1>
    <hr />
    
    <div class="container">
        <label>Name : </label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="Name_Required_validator" runat="server" ControlToValidate="Name_textbox" Display="Dynamic" ErrorMessage="*Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="Name_textbox" runat="server" Width="100%" Height="40px" Font-Size="Large"></asp:TextBox>
        <br /><br />
        
        <label>Email :</label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="Email_required_validator" runat="server" ControlToValidate="Email_textbox" Display="Dynamic" ErrorMessage="*Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="Email_regx_validator" runat="server" ControlToValidate="Email_textbox" Display="Dynamic" ErrorMessage="*enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="Email_textbox" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="Email"></asp:TextBox>
        <br /><br />

        <label>Mobile No. :</label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="MobNo_required_validator" runat="server" ControlToValidate="MobNo_textbox" Display="Dynamic" ErrorMessage="*Mobile number is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="MobNo_textbox" Display="Dynamic" ErrorMessage="*Enter a valid Mobile number" ForeColor="Red" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="MobNo_textbox" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="Number"></asp:TextBox>
        <br /><br />

        <label>Address :</label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="Address_required_validator" runat="server" ControlToValidate="Address_textbox" Display="Dynamic" ErrorMessage="*Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="Address_textbox" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="MultiLine"></asp:TextBox>
        <br /><br />

        <label>Password :</label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="Password_required_validator" runat="server" ControlToValidate="Password_textbox" Display="Dynamic" ErrorMessage="*Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="Password_textbox" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="Password"></asp:TextBox>
        <br /><br />

        <label>Confirm Password :</label>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="ConfirmPassword_required_validator" runat="server" ControlToValidate="ConfirmPassword_textbox" Display="Dynamic" ErrorMessage="*Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="passwoed_compare_validator" runat="server" ControlToCompare="Password_textbox" ControlToValidate="ConfirmPassword_textbox" Display="Dynamic" ErrorMessage="*Password and Confirm Password must be same" ForeColor="Red"></asp:CompareValidator>
        <br />
        <asp:TextBox ID="ConfirmPassword_textbox" runat="server" Width="100%" Height="40px" Font-Size="Large" TextMode="Password"></asp:TextBox>
        <br /><br />

        <asp:Button ID="register_button" runat="server" Text="Register" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Large" ForeColor="White" Height="40px" Width="100px" OnClick="register_button_Click" />
            <br />
            <br />
            <p style="font-size:medium; font-weight:400">Existing User ?
            <asp:HyperLink ID="Login_linkId" runat="server" CssClass="alert-link" Font-Size="Medium" ForeColor="#000099" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            </p>
    </div>

</asp:Content>
