<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminResetLoginCredentials.aspx.cs" Inherits="Restaurant_Management_System.AdminResetLoginCredentials" %>
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
  
    <li class="vertical"><a href="AdminDetailsManagement.aspx">Admin Details Management</a></li>
  <li class="vertical"><a href="EmployeeDetailsManagement.aspx">Employee Details management</a></li>
         <li class="vertical"><a href="AdminResetLoginCredentials.aspx">Reset Login Credentials</a></li>
</ul>
    
    <div style="margin-left:25%;padding:1px 16px 20px;margin-top:-380px;/">
   <table bgcolor="#F9C70C" width="100%">
        <tr>
                <th>
                    <a href="AdminIndex.aspx">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            Home
                         </font>
                    </a>
                </th>
             
                <th>
                    <a href="EditAdmin.aspx">
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
       <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FF9900" ForeColor="Black">LinkButton</asp:LinkButton><br />
        <center><img src="Images\Food-banner-2.jpg" style="height:137px; width: 556px;" /><br /><br />
 
        <h1 style="background-color: #FF9933">Reset Login Credentials</h1>Please Enter the Admin ID to proceed<br />
 <asp:TextBox ID="TextBox1" runat="server" placeholder="Admin ID" BackColor="#FFCC00" Height="30px" Width="300px" ForeColor="Black" MaxLength="10"></asp:TextBox>
       <br />
       <br />
<asp:TextBox ID="TextBox6" runat="server" placeholder="Username" BackColor="#FFCC00" Height="30px" Width="300px"></asp:TextBox>
       <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Fill the username"></asp:RequiredFieldValidator>
       <br />
<asp:TextBox ID="TextBox7" runat="server" placeholder="Password" TextMode="Password" BackColor="#FFCC00" Height="30px" Width="300px" MaxLength="10"></asp:TextBox>
       <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter the new password"></asp:RequiredFieldValidator>
       <br />
<asp:TextBox ID="TextBox8" runat="server" placeholder="Reconfirm Password" TextMode="Password" BackColor="#FFCC00" Height="30px" Width="300px" MaxLength="10"></asp:TextBox>
       <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Passwords Does notmatch"></asp:CompareValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter the reconfirm pasword"></asp:RequiredFieldValidator>
       <br />
       
        <asp:Button ID="Button1" runat="server" Text="Reset"  BackColor="#0066FF" ForeColor="White" Height="50px" Width="100px" OnClick="Button1_Click" />
        
        <br />
        
        <br /><br />
        
<footer>
  <p>Copyright@2020FreshCourse.PVT.LTD. All rights reserved<br>
  <a href="www.FreshCourse.pvt.ltd">www.FreshCourse.Pvt.LTD</a></p>
</footer>


    </div>  
</asp:Content>
