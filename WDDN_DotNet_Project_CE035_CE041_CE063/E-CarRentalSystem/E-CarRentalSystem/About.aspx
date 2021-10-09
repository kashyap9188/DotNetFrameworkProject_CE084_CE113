<%@ Page Title="About US" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="E_CarRentalSystem.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <hr />
    <h3 style="font-weight:600">About Our Application</h3>
    
        In this application, firstly user have to register yourself by providing necessery details
        and after that user have to login yourself.<br />user can search a car in a Search-car page based
        on number of seats and then fill necessery details to book a selected car.<br />then request of 
        booking added to My-Request page in pending status. If admin accept request of booking based on 
        availbility<br /> then status of request would be accepted. After that your booking is completed and 
        we contact you for further steps.
    
    <br />
    <br />
    <br />
    <br />
</asp:Content>
