<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AccountantIndex.aspx.cs" Inherits="Restaurant_Management_System.AccountantIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="Style/index.css" rel="stylesheet" />
    <link href="Style/index2.css" rel="stylesheet" />
    <link href="Style/footer.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <div class="vertical-head">
    <h1 style="font-family: 'Bahnschrift SemiCondensed'; background-color: #FF6600;">Fresh Course PVT LTD</h1></div>
    <br /><br /><br /><br />
    <div class="vertical-ul">
    <img src="Images/logo.png" class="vertical-ul" style="width:200px;height:200px;margin-left:50px;margin-top:-5px;overflow:hidden;" /><br /><br /><br /><br /><br /><br /><br />
    <center><h2 style="background-color: #FF6600">Dashboard</h2><br /></center>
    </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <ul class="vertical-ul">
      <li class="vertical"><a class="active" href="#home">Home</a></li>
      
      <li class="vertical"><a href="Salary.aspx">Salary Management</a></li>
      <li class="vertical"><a href="income.aspx">Income and Expenses</a></li>
        <li class="vertical"><a href="Attendance.aspx">Employee Attendance</a></li>
        <li class="vertical"><a href="Report.aspx">Report</a></li>
         
    </ul>
    <br />
    
    <div style="margin-left:25%;padding:1px 16px 20px;margin-top:-400px;/">
        <table bgcolor="#F9C70C" width="100%">
        <tr>
                <th>
                    <a href="#">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            Home
                         </font>
                    </a>
                </th>
             
                <th>
                    <a href="EditAccountant.aspx">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            Edit Profile
                         </font>
                    </a>
                </th>

                <th>
                    <a href="index.aspx">
                        <font face="Bookman Old Style" size="4" color="#FF0000">
                           Logout
                         </font>
                    </a>
        </tr>
    </table>
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FF9900" ForeColor="Black" >LinkButton</asp:LinkButton>
         <h1>Welcome Accountant!</h1><br />
         <img src="Images\Food-banner-2.jpg" style="height:350px" /><br /><br />
         <center><img src="Images/ingredients-to-food.gif"  style="width:1000px;height:500px"/></center>
       <br />
   
        

<br /><br /><br />
        
<footer>
  <p>Copyright@2020FreshCourse.PVT.LTD. All rights reserved<br>
  <a href="www.FreshCourse.pvt.ltd">www.FreshCourse.Pvt.LTD</a></p>
</footer>
</div>  
</div>  
    
</asp:Content>
