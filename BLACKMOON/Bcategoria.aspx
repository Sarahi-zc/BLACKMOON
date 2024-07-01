<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bcategoria.aspx.vb" Inherits="BLACKMOON.Bcategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Lucida Handwriting'; font-style: normal; font-variant: normal; color: #FFFFFF; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            <br />
            BUSCAR POR CATEGORÍA<br />
            <br />
            <br />
            Nombre de la categoria:&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Names="Century Gothic" Height="25px" Width="160px" DataSourceID="nombreCategoria" DataTextField="nom_cate" DataValueField="nom_cate">
            </asp:DropDownList>
            <asp:SqlDataSource ID="nombreCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [nom_cate] FROM [categoria]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            &nbsp; <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="id_categoria" DataSourceID="BusquedaCategoria" Font-Names="Century Gothic">
                <Columns>
                    <asp:BoundField DataField="nom_prod" HeaderText="nom_prod" SortExpression="nom_prod" />
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
            <asp:SqlDataSource ID="BusquedaCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT producto.nom_prod, categoria.id_categoria, categoria.nom_cate
FROM     categoria INNER JOIN
                  producto ON categoria.id_categoria = producto.id_categoria
WHERE  (categoria.nom_cate = @nom_cate)
				">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="nom_cate" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
