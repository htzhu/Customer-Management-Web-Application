<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="menuPage.aspx.cs" Inherits="Restaurant_Management_System.menuPage" %>
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
      <li class="vertical"><a class="active" href="#">Home</a></li>
      <li class="vertical"><a href="Menu.aspx">Menu</a></li>
      <li class="vertical"><a href="#">Menu Management</a></li>
      
    </ul>
    <br />

      <div style="margin-left:25%;padding:1px 16px 20px;margin-top:-380px;/">
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
                    <a href="EditChef.aspx">
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
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton><br />
        <br /><br />

            <center><h3 style="background-color: #FF9900; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">Menu Details</h3></center>
        
            <div class="container-fluid">
            <div class="row">
             <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row" style="background-color: #FF9933">
                     <div class="col">
                        <center>
                            <img width="100px" src="Images/avatars-000377300369-6sk26d-t500x500.jpg" />
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
                        <label>Menu ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Menu ID"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Cannot leave empty" ForeColor="Red"></asp:RequiredFieldValidator>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" CausesValidation="False"    />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                         Item Name/Description
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Item description" TextMode="MultiLine"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Cannot leave empty" ForeColor="Red"></asp:RequiredFieldValidator>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                         Chef ID
                        <div class="form-group">
                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Chef ID"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Cannot leave empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-8">
                         Price(Rs)
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Prices" TextMode="Number"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Cannot leave empty" ForeColor="Red"></asp:RequiredFieldValidator>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                         Food Type
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                 <asp:ListItem Text="Local-food" Value="Local-food"></asp:ListItem>
                                   <asp:ListItem Text="Western Food" Value="Western Food"></asp:ListItem>
                                   <asp:ListItem Text="Desserts" Value="Desserts"></asp:ListItem>
                                   <asp:ListItem Text="Appertizers" Value="Appertizers"></asp:ListItem>
                                   <asp:ListItem Text="Starters" Value="Starters"></asp:ListItem>
                                   <asp:ListItem Text="Beverages" Value="Beverages"></asp:ListItem>
                                   
                            </asp:DropDownList>
                            <!--Food Type<asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Food Type"></asp:TextBox>-->
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Cannot leave empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                  </div>

                    
                    </div>
                    </div>
                    </div>     
                    </div>
           <br />
                 <center>
           <asp:Button ID="Button2" runat="server" Text="Insert"  BackColor="#009900" Height="50px" Width="100px" ForeColor="White" OnClick="Button2_Click"  />
           <asp:Button ID="Button3" runat="server" Text="Update" BackColor="#FF9900" Height="50px" Width="100px" ForeColor="White" OnClick="Button3_Click"  />
           <asp:Button ID="Button4" runat="server" Text="Delete" BackColor="Red" Height="50px" Width="100px" ForeColor="White" OnClick="Button4_Click" CausesValidation="False"  />
           <asp:Button ID="Button5" runat="server" Text="Search" BackColor="Blue" Height="50px" Width="100px" ForeColor="White" OnClick="Button5_Click" CausesValidation="False"  />
                     <br />
           </center>
                <br />
                <center>
                    <h3 style="background-color: #FF6600">Menu List</h3>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="670px" Height="322px">
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
                    </center>
                <center>
                    <br />

<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="menu_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="370px" Width="685px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="menu_id" HeaderText="Menu ID" ReadOnly="True" SortExpression="menu_id" />
        <asp:BoundField DataField="Item_description" HeaderText="Item Description" SortExpression="Item_description" />
        <asp:BoundField DataField="chef_id" HeaderText="Chef ID" SortExpression="chef_id" />
        <asp:BoundField DataField="prices" HeaderText="Price(Rs)" SortExpression="prices" />
        <asp:BoundField DataField="food_type" HeaderText="Food Type" SortExpression="food_type" />
    </Columns>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-RNRBLG4\KITHMINISQL;Initial Catalog=RestaurantDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [menu_details]"></asp:SqlDataSource>
                </center>
                <br />
                <center>
                      <asp:Button ID="Button6" runat="server" Text="Detailed report PDF"  BackColor="#FF3300" CausesValidation="False" Height="46px" Width="247px" OnClick="Button6_Click"  />
                
             
                <asp:Button ID="Button7" runat="server" Text="PDF for Search Function"  BackColor="#009900" CausesValidation="False" Width="216px" Height="45px" OnClick="Button7_Click"   />
                </center>
                
        
       
    <footer>
      <p>Copyright@2020FreshCourse.PVT.LTD. All rights reserved<br>
      <a href="www.FreshCourse.pvt.ltd">www.FreshCourse.Pvt.LTD</a></p>
    </footer>


     </div>  

   </asp:Content>
