<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Icategoria.aspx.vb" Inherits="BLACKMOON.Icategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


        .auto-style2 {
            margin-top: 10px;
            margin-bottom: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: &quot;Lucida Handwriting&quot;; font-style: normal; color: #FFFFFF; text-align: center; word-spacing: normal; letter-spacing: normal; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            &nbsp;<br />
            AGREGAR CATEGORÍA<br />
            <br />
            Categoria:
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="Double"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Agregar" Width="201px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt; Volver al inicio" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_categoria" DataSourceID="InsertarCategoria" ForeColor="Black" Height="240px" Width="360px" Font-Names="Century Gothic">
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
            <asp:SqlDataSource ID="InsertarCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand=" INSERT INTO [dbo].[categoria]
	([nom_cate])
    VALUES (@nom_cate);
	 SELECT * FROM categoria WHERE [nom_cate] = @nom_cate">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="nom_cate" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
