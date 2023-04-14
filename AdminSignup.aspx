<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminSignup.aspx.cs" Inherits="Restaurant_Management_System.AdminSignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Style/index.css" rel="stylesheet" />
    <link href="Style/index2.css" rel="stylesheet" />
    <link href="Style/Admin_login.css" rel="stylesheet" />
    
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
      
      <li class="vertical"><a href="AdminLogin.aspx">Admin Login</a></li>
     
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
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<center>  

    <div class="loginBox">
		<div class="glass">
           
            <h2 style="background-color: #FF9900">Admin Signup</h2>
            <center><img src="Images/avatar.jpg" /></center>
            <br /><br />

            <div class="inputBox">


                <br />
        
                
        
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Admin ID" MaxLength="10"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Don't leave anything blank" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />

<asp:Button ID="verify" runat="server" Text="Verify" OnClick="verify_Click" CausesValidation="False"></asp:Button><br />
                
<asp:TextBox ID="TextBox2" runat="server" placeholder="Type" ReadOnly="True"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Don't leave anything blank" ControlToValidate="TextBox2"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="TextBox3" runat="server" placeholder="Firstname" ReadOnly="True"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Don't leave anything blank" ControlToValidate="TextBox3"></asp:RequiredFieldValidator><br />
               
<asp:TextBox ID="TextBox4" runat="server" placeholder="Lastname"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Don't leave anything blank" ControlToValidate="TextBox4"></asp:RequiredFieldValidator><br /><br />
<asp:TextBox ID="TextBox5" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Don't leave anything blank" ControlToValidate="TextBox5"></asp:RequiredFieldValidator><br /><br />
<asp:TextBox ID="TextBox6" runat="server" placeholder="Username" MaxLength="10"></asp:TextBox>

<asp:TextBox ID="TextBox7" runat="server" placeholder="Password" TextMode="Password" MaxLength="10"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Don't leave anything blank" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Does not match" ControlToCompare="TextBox7" ControlToValidate="TextBox8"></asp:CompareValidator>
<asp:TextBox ID="TextBox8" runat="server" placeholder="Reconfirm Password" TextMode="Password" MaxLength="10"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Don't leave anything blank" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Password Should have minimum 5 characters" ControlToValidate="TextBox7" MaximumValue="5" MinimumValue="10"></asp:RangeValidator>
<asp:Button ID="Button2" runat="server" Text="Signup" OnClick="Button2_Click" ></asp:Button><br />
<asp:Button ID="Button3" runat="server" Text="Login" OnClick="Button3_Click" CausesValidation="False"></asp:Button><br />


            </div>
	</div>
  


    
    </center>  
     </div>  
</asp:Content>
