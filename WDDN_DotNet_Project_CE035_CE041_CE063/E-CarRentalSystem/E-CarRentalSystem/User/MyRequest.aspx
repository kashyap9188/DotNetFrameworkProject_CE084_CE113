<%@ Page Title="Request Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyRequest.aspx.cs" Inherits="E_CarRentalSystem.User.MyRequest" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>My Requests</h1>
    <center><h4>
        <asp:Label ID="Msg_Id" runat="server" ForeColor="#00CC00"></asp:Label>
    </h4></center>
    <hr />
    <% if (reqs.Count == 0)
        {%>
            <center><h4 style="color:red;">Request has not been made...</h4></center>
    <%} %>
    <div class="row">
    <table class="table table-striped">
        <thead>
        <tr>
            <th class="col-lg-2 col-md-6 col-sm-10">Name</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Seat</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Starting Date</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Ending Date</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Status</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Action</th>
        </tr>
        </thead>

    <tbody>
        <%foreach(var req in reqs)
            { %>
                <tr>
                    <td class="col-lg-2 col-md-6 col-sm-10" ><%= req.car.Name %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10"><%= req.car.No_Seat %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10"><%= req.StartingDate %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10"><%= req.EndingDate %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10" ><%= req.Status %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10">
                        <% if (req.Status == "Pending")
                            { %>
                        <a class="btn" style="background-color:black; color:white;" href=<%= "Edit-Request.aspx?id=" + req.Id %>>Edit</a>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn" style="background-color:black; color:white;" href=<%= "Delete-Request.aspx?id=" + req.Id %>>Delete</a>
                        <%} %>
                    </td>
                </tr>
        <%} %>
    </tbody>
    </table>
    </div>


</asp:Content>

