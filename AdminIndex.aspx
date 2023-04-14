<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="Restaurant_Management_System.AdminIndex" %>
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
        
        <img src="Images/logo.png" class="vertical-ul" style="width:200px;height:200px;margin-left:50px;margin-top:-5px;overflow:hidden;" /><br /><br /><br /><br /><br /><br /><br /><br />
    <center><h2 style="background-color: #FF6600">Dashboard</h2><br /></center>
    </div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    
    <ul class="vertical-ul">
  <li class="vertical"><a class="active" href="#">Home</a></li>
 
         <li class="vertical"><a href="AdminDetailsManagement.aspx">Admin Details Management</a></li>
  <li class="vertical"><a href="EmployeeDetailsManagement.aspx">Employee Details management</a></li>
         <li class="vertical"><a href="AdminResetLoginCredentials.aspx">Reset Login Credentials</a></li>

</ul>
    
    <div style="margin-left:25%;padding:1px 16px 20px;margin-top:-400px;">
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
   <br />
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FF9900" ForeColor="Black">LinkButton</asp:LinkButton>
        <br />
        <h1 style="background-color: #FF6600">Welcome Admin!</h1><br />
         <img src="Images\Food-banner-2.jpg" style="height:350px" />
       <br />
         
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


      <br /> <br /><br /><br /> <br /> <br />
    <footer>
      <p>Copyright@2020FreshCourse.PVT.LTD. All rights reserved<br>
      <a href="www.FreshCourse.pvt.ltd">www.FreshCourse.Pvt.LTD</a></p>
    </footer>


     </div> 
     
</asp:Content>
