<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Restaurant_Management_System.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="Style/index.css" rel="stylesheet" />
    <link href="Style/index2.css" rel="stylesheet" />
    <link href="Style/footer.css" rel="stylesheet" />
    <link href="Style/menu.css" rel="stylesheet" />
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
      <li class="vertical"><a href="#">Menu</a></li>
      <li class="vertical"><a href="customerMain.aspx">Customers</a></li>
      <li class="vertical"><a href="AdminLogin.aspx">Admin Login</a></li>
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
        <br /><br />
        
        <div class="our_menu">
    <ul class="menu">
            <li class="item">
               <strong class="new">new</strong> 
		          <a href="https://freshdesignweb.com/">
                    <h3>2 for $20</h3>
                    <p> 1 Appetizer + 2 Entrees = Just $20</p>
                      
                    <img src="Images/burger1.jpg" alt="2 for 20" height="164" width="283">
                 </a>
            </li>
            <li class="item">
               <strong class="new">new</strong>
			   <a href="https://freshdesignweb.com/">
                    <h3>Appetizers</h3>
                    <p> Start a meal off right with your favorite from our menu of signature appetizers. Can't choose just one? You don't have</p>
                   
                   <img src="Images/Chicken-Fried-Rice-square-FS-.jpg" alt="" height="164" width="283">
                </a>
            </li>
            <li class="item">
            	  <strong class="new">new</strong>
		       <a href="https://freshdesignweb.com/">
                    <h3>Pick 'N Pair Lunches</h3>
                    <p> Make your own lunch combo with soups, salads, sandwiches &amp; more.</p>
                   
                    <img src="Images/Chopped-Salad-001_1-225x225.jpg" alt="Alternate" height="164" width="283">
               </a>
            </li>
            <li class="item">
			   <a href="https://freshdesignweb.com/">
                    <h3> Entrees &amp; Main Dishes</h3>
                    <p>Our menu opens up a world of choices, loaded with flavor. From juicy steaks and succulent seafood, to saucy ribs and  burgers.</p>
                   
                   <img src="Images/download%20(3).jpg" alt="" height="164" width="283">
               </a>
            </li>
            <li class="item">
		      <a href="https://freshdesignweb.com/">
                    <h3>Sizzling Entrees</h3>
                    <p> Fresh flavor never sounded so good.</p>
                  
                    <img src="Images/download%20(1).jpg" alt="" height="164" width="283">
              </a>
            </li>
            <li class="item">
			   <a href="https://freshdesignweb.com/">
                    <h3> Freshburgers &amp; Sandwiches</h3>
                    <p> From mouthwatering Freshburgers to big and tasty Sandwiches, we've got the flavors to satisfy your cravings.</p>
                   
                   <img src="Images/61v0iC6vyZL._SX679_PIbundle-24,TopRight,0,0_AA679SH20_.jpg" alt="Alternate" height="164" width="283">
               </a>
            </li>
            <li class="item">
			  <a href="https://freshdesignweb.com/">
                    <h3>Salads</h3>
                    <p>Fresh &amp; Delicious</p>
                  
                    <img src="Images/download%20(2).jpg" alt="Alternate" height="164" width="283">
              </a>
            </li>
            <li class="item">
			   <a href="https://freshdesignweb.com/">
                    <h3> Weight Watchers</h3>
                    <p>Delicious Entrées endorsed by Weight Watchers. Eating Right Never Tasted So Good.</p>
                   
                    <img src="Images/31-3-large.jpg"" alt="Alternate" height="164" width="283">
                </a>
            </li>
            <li class="item">
			   <a href="https://freshdesignweb.com/">
                    <h3>Under 550 Calories</h3>
                    <p> Big Flavor. Big Portions. Big Value. All Under 550 Calories.</p>
                   
                    <img src="Images/pizza-recipe-1-500x375.jpg" alt="Alternate" height="164" width="283">
               </a>
            </li>
   </ul>     
</div>
        <center>
        <h1 style="background-color: #FF5050">Restaurant Menu</h1>
        <h3 style="background-color: #FF6600">Please Login to order food</h3></center>
       <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="menu_id" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="610px" Width="996px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="menu_id" HeaderText="Menu ID" ReadOnly="True" SortExpression="menu_id" />
                <asp:BoundField DataField="Item_description" HeaderText="Item Description" SortExpression="Item_description" />
                <asp:BoundField DataField="prices" HeaderText="Price(RS)" SortExpression="prices" />
                <asp:BoundField DataField="food_type" HeaderText="Food Type" SortExpression="food_type" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-RNRBLG4\KITHMINISQL;Initial Catalog=RestaurantDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [menu_details]"></asp:SqlDataSource>
           </center>
           <br /><br />
    <footer>
      <p>Copyright@2020FreshCourse.PVT.LTD. All rights reserved<br>
      <a href="www.FreshCourse.pvt.ltd">www.FreshCourse.Pvt.LTD</a></p>
    </footer>


     </div>  
</asp:Content>
