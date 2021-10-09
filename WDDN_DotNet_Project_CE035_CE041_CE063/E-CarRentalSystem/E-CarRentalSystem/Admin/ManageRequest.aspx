<%@ Page Title="Manage Requests" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageRequest.aspx.cs" Inherits="E_CarRentalSystem.Admin.ManageRequest" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Manage Requests</h1>
    <hr />
    <% if (all_reqs.Count != 0)
        { %>
    <center><h3>All pending Requests</h3></center>
    <%}
        else
        { %>
    <center><h3>No Request Found...</h3></center>
    <%} %>
    <center><asp:Label ID="msg_label" runat="server" Text=""></asp:Label></center>
    <div class="row">
    <table class="table table-striped">
        <thead>
        <tr>
            <th class="col-lg-2 col-md-6 col-sm-10">User Name</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Car Name</th>
            <th class="col-lg-1 col-md-6 col-sm-10"># Seat</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Starting Date</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Ending Date</th>
            <th class="col-lg-1 col-md-6 col-sm-10">Rate (/km)</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Action</th>
        </tr>
        </thead>

    <tbody>
        <% foreach(var req in all_reqs)
            { %>
                <tr>
                    <td class="col-lg-2 col-md-6 col-sm-10" ><%= req.user.Name %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10" ><%= req.car.Name %></td>
                    <td class="col-lg-1 col-md-6 col-sm-10"><%= req.car.No_Seat %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10"><%= req.StartingDate %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10"><%= req.EndingDate %></td>
                    <td class="col-lg-1 col-md-6 col-sm-10" ><%= req.car.Rate %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10">
                    <a class="btn" style="background-color:black; color:white;" href=<%= "Action-Request.aspx?id=" + req.Id %>>Action</a>
                        
                    </td>
                </tr>
        <%} %>
    </tbody>
    </table>
    </div>

</asp:Content>
