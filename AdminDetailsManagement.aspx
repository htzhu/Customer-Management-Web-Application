<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDetailsManagement.aspx.cs" Inherits="Restaurant_Management_System.AdminDetailsManagement" %>
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
        
        <img src="Images/logo.png" class="vertical-ul" style="width:200px;height:200px;margin-left:50px;margin-top:-5px;overflow:hidden;" /><br /><br /><br /><br /><br /><br /><br /><br />
    <center><h2 style="background-color: #FF6600">Dashboard</h2><br /></center>
    </div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    
    <ul class="vertical-ul">
  <li class="vertical"><a class="active" href="AdminIndex.aspx">Home</a></li>
  
        <li class="vertical"><a href="AdminDetailsManagement.aspx">Admin Details Management</a></li>
  <li class="vertical"><a href="EmployeeDetailsManagement.aspx">Employee Details management</a></li>
         <li class="vertical"><a href="AdminResetLoginCredentials.aspx">Reset Login Credentials</a></li>
</ul>
    
    <div style="margin-left:25%;padding:1px 16px 20px;margin-top:-380px;"/>
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
                    <a href="index.aspx" style="background-color: #FF0000">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                           Logout
                         </font>
                    </a>
        </tr>
    </table>
    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FF6600" ForeColor="White">LinkButton</asp:LinkButton>
        <br />
        <center><h3 style="background-color: #FF6600">Admin Details Management</h3></center>
  
        <div class="container-fluid">
            <div class="row">
             <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row" style="background-color: #FF9933">
                     <div class="col">
                        <center>
                            <img width="100px" src="Images/avatar2.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-8">
                        <label>Admin ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button5" runat="server" Text="Go" OnClick="Button5_Click" CausesValidation="False"   />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Type</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Type"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>First Name</label>
                        <div class="form-group">
                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Firstname required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-8">
                        <label>Last Name</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Lastname required" ForeColor="Red"></asp:RequiredFieldValidator>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>E mail</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="E mail" Width="270px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col-md-8">
                        <label>User Name</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="User Name"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Password</label>
                          <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                         <div class="form-group">
                          
                        </div>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col-md-8">
                        <label>Reconfirm Password</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Reconfirm Password" Width="291px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Reconfirm password required" ForeColor="Red"></asp:RequiredFieldValidator>
                               <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                           </div>
                        </div>
                     </div>
                     </div>
                    </div>
                    </div>
                    </div>     
                    </div>
           <br />
            <center>
       <asp:Button ID="Button4" runat="server" Text="Search" BackColor="#009900" ForeColor="White" Height="50px" Width="100px" OnClick="Button4_Click" CausesValidation="False" />
        <asp:Button ID="Button1" runat="server" Text="Insert"  BackColor="#0066FF" ForeColor="White" Height="50px" Width="100px" OnClick="Button1_Click"  />
        <asp:Button ID="Button2" runat="server" Text="Update" BackColor="#CC6600" ForeColor="White" Height="50px" Width="100px" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Delete"  BackColor="Red" ForeColor="White" Height="50px" Width="100px" OnClick="Button3_Click" CausesValidation="False"  /><br /><br />
        </center><br />
            <center>
        <asp:GridView ID="GridView1" ShowHeaderWhenEmpty="True" EmptyDataText="No records found" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
      </asp:GridView></center>
        <br /><br />
        
<footer>
  <p>Copyright@2020FreshCourse.PVT.LTD. All rights reserved<br>
  <a href="www.FreshCourse.pvt.ltd">www.FreshCourse.Pvt.LTD</a></p>
</footer>


    </div>  
</asp:Content>
