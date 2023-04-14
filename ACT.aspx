<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ACT.aspx.cs" Inherits="Restaurant_Management_System.ACT" %>
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
      <li class="vertical"><a class="active" href="homepageFMagt.aspx">Home</a></li>
      
      <li class="vertical"><a href="FO.aspx">Financial Operations</a></li>
      <li class="vertical"><a href="UBE.aspx">Utility Bills and Expenses</a></li>
 <li class="vertical"><a href="#">Analysis Data</a></li>
    </ul>
    <br />
    
    <div style="margin-left:25%;padding:1px 16px 20px;margin-top:-400px;/">
    <table bgcolor="Orange" width="100%">
        <tr>
                <th>
                    <a href="homepageFMagt.aspx">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            Financial Management
                         </font>
                    </a>
                </th>

                <th>
                    <a href="FO.aspx">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            Financial Operations
                         </font>
                    </a>
                </th>

                <th>
                    <a href="UBE.aspx">
                        <font face="Bookman Old Style" size="4" color="FFFFFF">
                            Utility Bills and Expenses
                         </font>
                    </a>
                      <th>
                    <a href="index.aspx">
                        <font face="Bookman Old Style" size="4" color="#FF0000">
                            Logout
                         </font>
                    </a>
                </th>
        </tr>
    </table>
        <br />
         <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FF6600" ForeColor="White">LinkButton</asp:LinkButton>

    <table border="1" bgcolor="Yellow" width="100%">
        <tr align="center">
            <td>
                <h1>Analysis Data</h1>
            </td>
        </tr>
    </table>

    <br />

    <table bgcolor="#FFFF99" align="center" width="50%" cellspacing="10" cellpadding="10">

        <tr>
            <th>
                <center>Display and update function for the manager to show the collected data.</center>
            </th>
        </tr>
    </table>

    <table bgcolor="#FFFF99" align="center" width="50%" cellspacing="10" cellpadding="10">

        <tr>
            <td>
                Month From
            </td>

            <td>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
            </td>
        </tr>

        <tr>

            <td>
                Month To
            </td>

            <td>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
            </td>

        </tr>

        <tr>
            <td>
                Net Profit(Profit/Loss)
            </td>
        
            <td>
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Profit / Loss" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot leave empty" ControlToValidate="TextBox3" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>

                <tr>
            <td>
                Amount
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Rs. Amount" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot leave empty" ControlToValidate="TextBox4" ForeColor="#FF3300"></asp:RequiredFieldValidator>

            </td>
        </tr>


    </table>
        
    <table bgcolor="#FFFF99" align="center" width="50%" cellspacing="10" cellpadding="10">
        <tr>
            <td>
                <center><asp:Button ID="Button1" runat="server" Text="Add" BackColor="Lime" Height="40px" Width="150px" OnClick="Button1_Click" /></center>
            </td>
            <td>
                <center><asp:Button ID="Button2" runat="server" Text="Update" BackColor="#3399FF" Height="40px" Width="150px" OnClick="Button2_Click" /></center>
            </td>
            <td>
                <center><asp:Button ID="Button3" runat="server" Text="Search" BackColor="#FF9966" Height="40px" Width="150px" OnClick="Button3_Click" CausesValidation="False"></asp:Button></center>
            </td>
        </tr>
    </table>

    <br />
    <hr width="50%" />
    <br />

    <table bgcolor="#FFFF99" align="center" width="50%" cellspacing="10" cellpadding="10">

        <tr>
            <th><center> <img width="150"  src="IMagers/Records.png" /> <br /> <h>Records</h></center>
            </th>
        </tr>

        <tr><th>
            <center><asp:GridView ID="GridView1" runat="server"></asp:GridView></center>
            </th>
        </tr>

    </table>
        <br />
        <center>
        <h4>Analyzed Data</h4></center>
        <center><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="623px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="monthFrom" HeaderText="Month From" SortExpression="monthFrom" />
                <asp:BoundField DataField="monthTo" HeaderText="Month To" SortExpression="monthTo" />
                <asp:BoundField DataField="netProfit" HeaderText="Profit/Loss" SortExpression="netProfit" />
                <asp:BoundField DataField="amount" HeaderText="Amount(Rs)" SortExpression="amount" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-RNRBLG4\KITHMINISQL;Initial Catalog=RestaurantDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [analysisData]"></asp:SqlDataSource>
        </center>
        <center>
         <asp:Button ID="Button6" runat="server" Text="Detailed report PDF"  BackColor="#FF3300" CausesValidation="False" Height="46px" Width="247px" OnClick="Button6_Click"  />    
          <asp:Button ID="Button7" runat="server" Text="PDF for Search Function"  BackColor="#009900" CausesValidation="False" Width="216px" Height="45px" OnClick="Button7_Click" />
        </center>
        <br />
        <center>
            <center>
            <h4>Monthly Income (Please Contact the Accountant for more info)</h4></center>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="monthFrom" HeaderText="Month From" SortExpression="monthFrom" />
        <asp:BoundField DataField="monthTo" HeaderText="Month To" SortExpression="monthTo" />
        <asp:BoundField DataField="income" HeaderText="Income(Rs)" SortExpression="income" />
        <asp:BoundField DataField="expenses" HeaderText="Expenses(Rs)" SortExpression="expenses" />
        <asp:BoundField DataField="profit" HeaderText="Profit(Rs)" ReadOnly="True" SortExpression="profit" />
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-RNRBLG4\KITHMINISQL;Initial Catalog=RestaurantDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Income]"></asp:SqlDataSource>
        </center>
    <footer>
      <p>Copyright@2020FreshCourse.PVT.LTD. All rights reserved<br>
      <a href="www.FreshCourse.pvt.ltd">www.FreshCourse.Pvt.LTD</a></p>
    </footer>


     </div>  
</asp:Content>
