<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="insert2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
 
</head>
<body>

<div class="container">
    <form id="form1" runat="server">
   <h3 class="my-4">Crud Operation</h3>
    <div class="mb-3">
   
     <asp:Label ID="Label1" runat="server" class="form-label" Text="ID : "></asp:Label>
       <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
    
    </div>
    <div class="mb-3">
    <asp:Label ID="Label2" runat="server" class="form-label" Text="First Name : "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
    
   </div>
   <div class="mb-3">
    <asp:Label ID="Label3" runat="server" class="form-label" Text="Last Name :"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
    
    </div>
    <div class="mb-3">
    <asp:Label ID="Label4" runat="server" class="form-label" Text="Mobile Number : "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" MinLength="10"></asp:TextBox>
        
        
        
     </div>
    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Reset" />
    <asp:Button ID="Button2" class="btn btn-secondary" runat="server" Text="Insert" />
    <asp:Button ID="Button3" class="btn btn-info" runat="server" Text="Update" />
    <asp:Button ID="Button4" class="btn btn-danger" runat="server" Text="Delete" />
    <asp:Button ID="Button5" class="btn btn-success" runat="server" Text="Search" />
  

    <div class="mb-3">
    <table class="table" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: lighter; font-style: normal; font-variant: normal; color: #00FF00">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
        SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1" BorderColor="Black" 
            BorderWidth="2px" CellPadding="10" HorizontalAlign="Left" 
            ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="#CCCCCC" BorderColor="White" 
            Font-Strikeout="False" Font-Underline="False" Wrap="True" />
        <Columns>
        
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                SortExpression="lastname" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
               
        </Columns>
        <EditRowStyle BorderColor="Black" BorderWidth="5px" />
        <HeaderStyle BackColor="Black" BorderColor="Silver" BorderStyle="Solid" 
            ForeColor="White" />
        <PagerStyle BackColor="White" />
        <RowStyle BackColor="Silver" BorderColor="Black" BorderStyle="Solid" 
            ForeColor="Black" HorizontalAlign="Left" VerticalAlign="Middle" />
    </asp:GridView>
     </table>
    </div>
     </form>
     </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  
    
  
</body>
</html>
