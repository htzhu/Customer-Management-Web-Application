<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AccountantLogin.aspx.cs" Inherits="Restaurant_Management_System.AccountantLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/index.css" rel="stylesheet" />
    <link href="Style/index2.css" rel="stylesheet" />
    
    <link href="Style/Admin_login.css" rel="stylesheet" />
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
      <li class="vertical"><a class="active" href="index.aspx">Home</a></li>
      
      <li class="vertical"><a href="AccountantSignup.aspx">Accountant Signup</a></li>
      <li class="vertical"><a href="EmployeeIndex.aspx">Staff</a></li>
    </ul>
    <br />
    
    <div style="margin-left:25%;padding:1px 16px 20px;margin-top:-400px;/">
        <table bgcolor="#F9C70C" width="100%">
        <tr>
                <th>
                    <a href="index.aspx">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            Home
                         </font>
                    </a>
                </th>
             
                <th>
                    <a href="About.aspx">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            About
                         </font>
                    </a>
                </th>

                <th>
                    <a href="Contact.aspx">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                           Contact
                         </font>
                    </a>
        </tr>
    </table>
   <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

<center>   <div class="loginBox">
		<div class="glass">
           
     <%--<h2>Employee Signup</h2>--%>
            <h2>Accountant Login</h2>
            <center><img src="Images/avatar.jpg" /></center>
            <div class="inputBox">



        <asp:TextBox ID="TextBox1" runat="server" placeholder="username"></asp:TextBox>

<asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

<asp:Button ID="Button2" runat="server" Text="Signup" OnClick="Button2_Click"></asp:Button><br />
<asp:Button ID="Button3" runat="server" Text="Login" OnClick="Button3_Click1"></asp:Button><br />


            </div>
	</div>
  


    
    </center>  
        <br /><br />

<footer>
  <p>Copyright@2020FreshCourse.PVT.LTD. All rights reserved<br>
  <a href="www.FreshCourse.pvt.ltd">www.FreshCourse.Pvt.LTD</a></p>
</footer>
     </div>  

</asp:Content>
