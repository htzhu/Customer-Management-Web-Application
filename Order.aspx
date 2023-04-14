<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Restaurant_Management_System.Order" %>
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
      <li class="vertical"><a class="active" href="customerIndex.aspx">Home</a></li>
      <li class="vertical"><a href="#">Order</a></li>
     
         <li class="vertical"><a href="customerIndex.aspx">Customers</a></li>
    </ul>
    <br />

      <div style="margin-left:25%;padding:1px 16px 20px;margin-top:-380px;/">
           <table bgcolor="#F9C70C" width="100%">
            <tr>
                <th>
                    <a href="CustomerIndex.aspx">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            Home
                         </font>
                    </a>
                </th>
             
                <th>
                    <a href="#">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            Order
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
        <br /><br />

            <center><h3 style="background-color: #FF9900; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">Online Ordering</h3></center>
            <center><h2>YOU CAN ORDER ONLY UPTO 4 ITEMS</h2></center>
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
                     <div class="col-md-8">
                         CustomerID
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server" placeholder="Your order will be prepared for the customer ID"></asp:TextBox>
                              
                           </div>
                        </div>
                     </div>
                  <div class="row">
                     <div class="col-md-8">
                         Item 1(Please enter the Menu ID and click go)
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Item 1"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click"    />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                         Item Description
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Description" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <div class="form-group">
                            Price<asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Price" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-8">
                        <div class="form-group">
                           <div class="input-group">
                               Food Type<asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Food Type" ReadOnly="True"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                       
                     <div class="col-md-8">
                        <div class="form-group">
                            Quantity<asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Quantity"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col-md-8">
                         Item 2(Please enter the Menu ID and click go)
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Item 2"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button6" runat="server" Text="Go" OnClick="Button6_Click1"    />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                         Item Description
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Descrption" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <div class="form-group">
                            Price<asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Price" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-8">
                        <div class="form-group">
                           <div class="input-group">
                               Food Type<asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Food Type" ReadOnly="True"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <div class="form-group">
                            Quantity<asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Quantity"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col-md-8">
                         Item 3(Please enter the Menu ID and click go)
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Item 3"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button7" runat="server" Text="Go" OnClick="Button7_Click"    />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                         Item Description
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Description" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <div class="form-group">
                            Price<asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Price" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-8">
                        <div class="form-group">
                           <div class="input-group">
                               Food Type<asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Food Type" ReadOnly="True"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <div class="form-group">
                            Quantity<asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="Quantity"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col-md-8">
                         Item 4(Please enter the Menu ID and click go)
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" placeholder="Item 4"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button8" runat="server" Text="Go" OnClick="Button8_Click"     />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                         Item Description
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox17" runat="server" placeholder="Description" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <div class="form-group">
                            Price<asp:TextBox CssClass="form-control" ID="TextBox18" runat="server" placeholder="Price" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-8">
                        <div class="form-group">
                           <div class="input-group">
                               Food Type<asp:TextBox CssClass="form-control" ID="TextBox19" runat="server" placeholder="Food Type" ReadOnly="True"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <div class="form-group">
                            Quantity<asp:TextBox CssClass="form-control" ID="TextBox20" runat="server" placeholder="Quantity"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                    

                    
                    </div>
                    </div>
                    </div>     
                    </div>
           <br />
                 <center>
           
           <asp:Button ID="Button4" runat="server" Text="Place Order" BackColor="Red" Height="50px" Width="220px" ForeColor="White" OnClick="Button4_Click"   />
                     <br />
                     <br />
           <asp:Button ID="Button2" runat="server" Text="Order Details" BackColor="#009900" Height="47px" OnClick="Button2_Click" Width="220px"></asp:Button>
                     <br />
                     <br />
           <asp:Button ID="Button3" runat="server" Text="Order Status" BackColor="#FF9900" Height="43px" Width="219px" OnClick="Button3_Click"></asp:Button>
                     <br />
<br />
                    
<asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
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
                     <br /><br /><br />
                     <center><h2>Menu</h2></center>
                     <center>Menu will be displayed below. Please enter the MenuID and click go. Please be kind enough to limit the order for 4 items<br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="menu_id" DataSourceID="SqlDataSource1" Width="518px">
    <Columns>
        <asp:BoundField DataField="menu_id" HeaderText="menu_id" ReadOnly="True" SortExpression="menu_id" />
        <asp:BoundField DataField="Item_description" HeaderText="Item_description" SortExpression="Item_description" />
        <asp:BoundField DataField="prices" HeaderText="prices" SortExpression="prices" />
        <asp:BoundField DataField="food_type" HeaderText="food_type" SortExpression="food_type" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-RNRBLG4\KITHMINISQL;Initial Catalog=RestaurantDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [menu_details]"></asp:SqlDataSource>
           
            <br />
                
                <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="513px">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                         <br />
               </center>
                     </div>
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="Button5" runat="server" Text="Detailed report PDF"  BackColor="#FF3300" CausesValidation="False" Height="46px" Width="247px" OnClick="Button5_Click"  />    
                
           
</asp:Content>
