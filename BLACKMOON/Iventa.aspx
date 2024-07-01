<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Iventa.aspx.vb" Inherits="BLACKMOON.Iventa" %>

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
        .auto-style3 {
            width: 100%;
            height: 515px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Lucida Handwriting'; font-style: normal; font-variant: normal; color: #FFFFFF; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            <br />
            REALIZAR VENTA<br />
            <br />
            ID Producto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            ID Empleado:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            Cantidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Total de la venta:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Realizar Venta" Width="173px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <br />
            <table align="center" class="auto-style3">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_venta" DataSourceID="InsertarVenta" Font-Names="Century Gothic" ForeColor="Black" Width="728px">
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
                        <asp:SqlDataSource ID="InsertarVenta" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand=" INSERT INTO [dbo].[venta]
	([id_prod], 
	[id_empl], 
	[cantidad], 
	[total_venta])
    VALUES (@id_prod, @id_empl, @cantidad, @total_venta);
	SELECT * FROM venta">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="id_prod" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox2" Name="id_empl" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox3" Name="cantidad" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox4" Name="total_venta" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_prod" DataSourceID="SqlDataSource1" Font-Names="Century Gothic" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="id_prod" HeaderText="id_prod" InsertVisible="False" ReadOnly="True" SortExpression="id_prod" />
                                <asp:BoundField DataField="nom_prod" HeaderText="nom_prod" SortExpression="nom_prod" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_prod], [nom_prod] FROM [producto]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_empl" DataSourceID="verEmpleados" Font-Names="Century Gothic" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="id_empl" HeaderText="id_empl" InsertVisible="False" ReadOnly="True" SortExpression="id_empl" />
                                <asp:BoundField DataField="nom_empl" HeaderText="nom_empl" SortExpression="nom_empl" />
                                <asp:BoundField DataField="rol_empl" HeaderText="rol_empl" SortExpression="rol_empl" />
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
                        <asp:SqlDataSource ID="verEmpleados" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_empl], [nom_empl], [rol_empl] FROM [empleado2]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
