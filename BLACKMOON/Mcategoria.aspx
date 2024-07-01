<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Mcategoria.aspx.vb" Inherits="BLACKMOON.Mcategoría" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: &quot;Lucida Handwriting&quot;; color: #FFFFFF; text-align: center; word-spacing: normal; letter-spacing: normal; background-color: #000080; background-position: center center; border: medium double #00FFFF">
            <br />
            MODIFICAR CATEGORÍA<br />
            <br />
            ID Categoría:&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="Double" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="White" BorderStyle="Double" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#CC99FF" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="Modificar" Width="220px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt; Volver al inicio" />
&nbsp;<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_categoria" DataSourceID="ModificarCategoria" ForeColor="Black" Font-Names="Century Gothic">
                <Columns>
                    <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" InsertVisible="False" ReadOnly="True" SortExpression="id_categoria" />
                    <asp:BoundField DataField="nom_cate" HeaderText="nom_cate" SortExpression="nom_cate" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="ModificarCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="    UPDATE [categoria]
    SET [nom_cate] = @nom_cate
    WHERE [id_categoria] = @id_categoria;
	Select * from categoria WHERE [id_categoria] = @id_categoria
">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="nom_cate" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="id_categoria" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_categoria" DataSourceID="SqlDataSource1" Font-Names="Century Gothic" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" InsertVisible="False" ReadOnly="True" SortExpression="id_categoria" />
                    <asp:BoundField DataField="nom_cate" HeaderText="nom_cate" SortExpression="nom_cate" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_categoria], [nom_cate] FROM [categoria]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
