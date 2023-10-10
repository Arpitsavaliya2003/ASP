<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="crud.aspx.vb" Inherits="crudtest.crud" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <title>EMPLOYEE</title>
    
<style>
    body
    {
        background-color:Black;
        color:White;
    }
    h1
    {
        color:red;
        text-align:center;
        font-size:50px;
    }
    td
    {
        padding:10px;
    }
    
    table
    {
        border: 2px solid white;
    }
        
</style>
</head>
<body>

    <form id="form1" runat="server">
    <div class="container">

        <h1>Employee Data</h1>
        <center>
        <table>


        <tr> 
        <td><asp:Label ID="Label1" runat="server"  Text="ID" Font-Size="XX-Large"></asp:Label></td>
         <td> <asp:TextBox ID="TextBox1" runat="server" Font-Size="XX-Large" TextMode="Number"></asp:TextBox></td>
        </tr>

         <tr> 
        <td><asp:Label ID="Label6" runat="server" Text="Name" Font-Size="XX-Large"></asp:Label></td>
         <td> <asp:TextBox ID="TextBox2" runat="server" Font-Size="XX-Large"></asp:TextBox></td>
        </tr>

         <tr> 
        <td><asp:Label ID="Label2" runat="server" Text="PHONE" Font-Size="XX-Large"></asp:Label></td>
         <td> <asp:TextBox ID="TextBox3" runat="server" Font-Size="XX-Large" TextMode="Phone"></asp:TextBox></td>
        </tr>

        <tr> 
        <td><asp:Label ID="Label3" runat="server" Text="EMAIL" Font-Size="XX-Large"></asp:Label></td>
         <td> <asp:TextBox ID="TextBox4" runat="server" Font-Size="XX-Large" TextMode="Email"></asp:TextBox></td>
        </tr>

          <tr> 
        <td><asp:Label ID="Label4" runat="server" Text="DATE" Font-Size="XX-Large"></asp:Label></td>
         <td> <asp:TextBox ID="TextBox5" runat="server" Font-Size="XX-Large" TextMode="Date"></asp:TextBox></td>
        </tr>


           
    
    </table>
    <br />
    <br />

            <asp:Button ID="Button1" runat="server" Text="Create" BackColor="#0066FF" ForeColor="White"  Font-Size="X-Large" BorderStyle="Solid"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="update" BackColor="#339933" ForeColor="White" Font-Size="X-Large" BorderStyle="Solid"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="delete" BackColor="#FF3300" 
                ForeColor="White" Font-Size="X-Large" BorderStyle="Solid"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="search" BackColor="#6600FF" ForeColor="White" Font-Size="X-Large" BorderStyle="Solid"/>


            <br />
            <br />


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="15" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" AllowPaging="True" 
                AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM [test]"></asp:SqlDataSource>
    </center>


    </div>
    </form>
</body>
</html>
