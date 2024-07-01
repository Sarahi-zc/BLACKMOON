<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Binventario.aspx.vb" Inherits="BLACKMOON.Binventario" %>

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
    <form id="form1" runat="server" style="font-family: 'Lucida Handwriting'; font-style: normal; font-variant: normal; color: #FFFFFF; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            <br />
            BUSCAR INVENTARIO
            <br />
            <br />
            <br />
            ID Inventario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Button ID="Button1" runat="server" Text="Buscar Proveedor" Width="201px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_Inventario" DataSourceID="BuscarInventario" Font-Names="Century Gothic" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="id_Inventario" HeaderText="id_Inventario" InsertVisible="False" ReadOnly="True" SortExpression="id_Inventario" />
                    <asp:BoundField DataField="id_Prod" HeaderText="id_Prod" SortExpression="id_Prod" />
                    <asp:BoundField DataField="Cantidad_En_Stock" HeaderText="Cantidad_En_Stock" SortExpression="Cantidad_En_Stock" />
                    <asp:BoundField DataField="Fecha_Ingreso" HeaderText="Fecha_Ingreso" SortExpression="Fecha_Ingreso" />
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
            <asp:SqlDataSource ID="BuscarInventario" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="BuscarInventario" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id_Inventario" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
