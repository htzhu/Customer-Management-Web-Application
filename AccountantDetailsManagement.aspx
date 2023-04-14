<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AccountantDetailsManagement.aspx.cs" Inherits="Restaurant_Management_System.AccountantDetailsManagement" %>
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
    <center><h2 style="background-color: #FF6600">Dashboard</h2></center>
    </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

    <ul class="vertical-ul">
      <li class="vertical"><a class="active" href="AdminIndex.aspx">Home</a></li>
      <li class="vertical"><a href="AdminDetailsManagement.aspx">Admin Details Management</a></li>
      <li class="vertical"><a href="EmployeeDetailsManagement.aspx">Employee Details management</a></li>
      <li class="vertical"><a href="AdminResetLoginCredentials.aspx">Reset Login Credentials</a></li>
    </ul>
    <br />

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
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FF9900" ForeColor="Black">LinkButton</asp:LinkButton>
        <br /><br />

        <center><h3 style="background-color: #FF9900; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">Accountant Details Management</h3></center>
        
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
                        <label>Accountant ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Accountant ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" CausesValidation="False"   />
                           
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Type</label>
                        <div class="form-group">
                           <div class="input-group">
                             <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                   <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                                   <asp:ListItem Text="Manager" Value="Manager"></asp:ListItem>
                                   <asp:ListItem Text="Accountant" Value="Accountant"></asp:ListItem>
                                   <asp:ListItem Text="Chef" Value="Chef"></asp:ListItem>
                                   <asp:ListItem Text="Cashier" Value="Cashier"></asp:ListItem>
                                   <asp:ListItem Text="Store-Keeper" Value="StoreKeeper"></asp:ListItem>
                                   <asp:ListItem Text="Stock Manager" Value="StockManager"></asp:ListItem>
                               </asp:DropDownList>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Type cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
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
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="E mail" TextMode="Email"></asp:TextBox>
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
                         <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Should have atleast 5 characters" ForeColor="Red" MaximumValue="5" MinimumValue="10"></asp:RangeValidator>
                        <div class="form-group">
                          
                        </div>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col-md-8">
                        <label>Reconfirm Password</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Reconfirm Password"></asp:TextBox>
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
           <asp:Button ID="Button2" runat="server" Text="Insert"  BackColor="#009900" Height="50px" Width="100px" ForeColor="White" OnClick="Button2_Click" />
           <asp:Button ID="Button3" runat="server" Text="Update" BackColor="#FF9900" Height="50px" Width="100px" ForeColor="White" OnClick="Button3_Click" />
           <asp:Button ID="Button4" runat="server" Text="Delete" BackColor="Red" Height="50px" Width="100px" ForeColor="White" OnClick="Button4_Click" CausesValidation="False" />
           <asp:Button ID="Button5" runat="server" Text="Search" BackColor="Blue" Height="50px" Width="100px" ForeColor="White" OnClick="Button5_Click" CausesValidation="False" />
           </center>
           <br />

        <!--Grid View 1-->
                <center>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="accountantID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Height="404px" Width="938px">
               <AlternatingRowStyle BackColor="White" />
               
               <Columns>
                   <asp:BoundField DataField="accountantID" HeaderText="Accountant ID" ReadOnly="True" SortExpression="accountantID" />
                   <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                   <asp:BoundField DataField="firstname" HeaderText="Firstname" SortExpression="firstname" />
                   <asp:BoundField DataField="lastname" HeaderText="Lastname" SortExpression="lastname" />
                   <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                   <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                   <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                   <asp:BoundField DataField="reconfirmpassword" HeaderText="Reconfirm Password" SortExpression="reconfirmpassword" />
               </Columns>
               <EditRowStyle BackColor="#2461BF" />
               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#EFF3FB" />
               <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#F5F7FB" />
               <SortedAscendingHeaderStyle BackColor="#6D95E1" />
               <SortedDescendingCellStyle BackColor="#E9EBEF" />
               <SortedDescendingHeaderStyle BackColor="#4870BE" />
           </asp:GridView>


        <!--Grid View 2-->
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-RNRBLG4\KITHMINISQL;Initial Catalog=RestaurantDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [AccountantSignup]"></asp:SqlDataSource>
          <br /><br />
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
           </asp:GridView>

           <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Text="Detailed report PDF" OnClick="Button6_Click" BackColor="#FF3300" CausesValidation="False" Height="46px" Width="247px" />
                
             
                <asp:Button ID="Button7" runat="server" Text="PDF for Search Function" OnClick="Button7_Click" BackColor="#009900" CausesValidation="False" Width="216px" Height="45px" />
                <br />
            <br />
</center>

        <footer>
        <p>Copyright@2020FreshCourse.PVT.LTD. All rights reserved<br>
        <a href="www.FreshCourse.pvt.ltd">www.FreshCourse.Pvt.LTD</a></p>
        </footer>
        </div>

</asp:Content>
