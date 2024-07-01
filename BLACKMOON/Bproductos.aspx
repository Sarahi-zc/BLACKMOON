<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bproductos.aspx.vb" Inherits="BLACKMOON.Bproductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Lucida Handwriting'; font-style: normal; font-variant: normal; color: #FFFFFF; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            <br />
            BUSCAR PRODUCTOS POR PRECIO<br />
            <br />
            <br />
            Precio del producto:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style1" Font-Names="Century Gothic" Height="23px" Width="160px" DataSourceID="buscarPorPrecio" DataTextField="precio_prod" DataValueField="precio_prod">
            </asp:DropDownList>
            <asp:SqlDataSource ID="buscarPorPrecio" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [precio_prod] FROM [producto]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            &nbsp; <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="id_prod" DataSourceID="buscarProductos" Font-Names="Century Gothic">
                <Columns>
                    <asp:BoundField DataField="id_prod" HeaderText="id_prod" InsertVisible="False" ReadOnly="True" SortExpression="id_prod" />
                    <asp:BoundField DataField="nom_prod" HeaderText="nom_prod" SortExpression="nom_prod" />
                    <asp:BoundField DataField="nom_cate" HeaderText="nom_cate" SortExpression="nom_cate" />
                    <asp:BoundField DataField="desc_prod" HeaderText="desc_prod" SortExpression="desc_prod" />
                    <asp:BoundField DataField="precio_prod" HeaderText="precio_prod" SortExpression="precio_prod" />
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
            <asp:SqlDataSource ID="buscarProductos" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT producto.id_prod, producto.nom_prod, categoria.nom_cate, producto.desc_prod, producto.precio_prod
FROM     producto INNER JOIN
                  categoria ON producto.id_categoria = categoria.id_categoria
WHERE  (producto.precio_prod = @precio_prod)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="precio_prod" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
