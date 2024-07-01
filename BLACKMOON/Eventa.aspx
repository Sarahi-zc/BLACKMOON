<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Eventa.aspx.vb" Inherits="BLACKMOON.Eventa" %>

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
            ELIMINAR VENTA<br />
            <br />
            <br />
            ID Venta:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Eliminar Venta" Width="201px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_venta" DataSourceID="EliminarVenta" Font-Names="Century Gothic" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="id_venta" HeaderText="id_venta" InsertVisible="False" ReadOnly="True" SortExpression="id_venta" />
                    <asp:BoundField DataField="id_prod" HeaderText="id_prod" SortExpression="id_prod" />
                    <asp:BoundField DataField="id_empl" HeaderText="id_empl" SortExpression="id_empl" />
                    <asp:BoundField DataField="fecha_venta" HeaderText="fecha_venta" SortExpression="fecha_venta" />
                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                    <asp:BoundField DataField="total_venta" HeaderText="total_venta" SortExpression="total_venta" />
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
            <asp:SqlDataSource ID="EliminarVenta" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="DELETE FROM [venta]
    WHERE [id_venta] = @id_venta;
	SELECT * FROM venta">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id_venta" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_venta" DataSourceID="ev" Font-Names="Century Gothic" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="id_venta" HeaderText="id_venta" InsertVisible="False" ReadOnly="True" SortExpression="id_venta" />
                    <asp:BoundField DataField="id_prod" HeaderText="id_prod" SortExpression="id_prod" />
                    <asp:BoundField DataField="id_empl" HeaderText="id_empl" SortExpression="id_empl" />
                    <asp:BoundField DataField="fecha_venta" HeaderText="fecha_venta" SortExpression="fecha_venta" />
                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                    <asp:BoundField DataField="total_venta" HeaderText="total_venta" SortExpression="total_venta" />
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
            <asp:SqlDataSource ID="ev" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT * FROM [venta]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
