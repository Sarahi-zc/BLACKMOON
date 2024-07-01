<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Mpedido.aspx.vb" Inherits="BLACKMOON.Mpedido" %>

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
            width: 96%;
        }
        .auto-style4 {
            width: 438px;
        }
        .auto-style5 {
            width: 489px;
        }
        .auto-style6 {
            width: 2001px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Lucida Handwriting'; font-style: normal; font-variant: normal; color: #FFFFFF; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            <br />
            MODIFICAR PEDIDO<br />
            <br />
            <br />
            ID Pedido:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            ID Proveedor:&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            ID Categoría:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            ID Producto:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            Piezas:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            Fecha de pedido:&nbsp; <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            Costo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Actualizar Pedido" Width="198px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <br />
            <table align="center" class="auto-style3">
                <tr>
                    <td class="auto-style6">
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_pedido" DataSourceID="ModificarProducto" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="id_pedido" HeaderText="id_pedido" InsertVisible="False" ReadOnly="True" SortExpression="id_pedido" />
                                <asp:BoundField DataField="id_prov" HeaderText="id_prov" SortExpression="id_prov" />
                                <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" />
                                <asp:BoundField DataField="id_prod" HeaderText="id_prod" SortExpression="id_prod" />
                                <asp:BoundField DataField="piezas_prod" HeaderText="piezas_prod" SortExpression="piezas_prod" />
                                <asp:BoundField DataField="fecha_ped" HeaderText="fecha_ped" SortExpression="fecha_ped" />
                                <asp:BoundField DataField="costo_ped" HeaderText="costo_ped" SortExpression="costo_ped" />
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
                        <asp:SqlDataSource ID="ModificarProducto" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand=" UPDATE [pedido]
    SET [id_prov] = @id_prov, 
		[id_categoria] = @id_categoria, 
		[id_prod] = @id_prod, 
		[piezas_prod] = @piezas_prod, 
		[fecha_ped] = @fecha_ped, 
		[costo_ped] = @costo_ped
    WHERE [id_pedido] = @id_pedido;
	SELECT * FROM pedido WHERE [id_pedido] = @id_pedido">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="id_prov" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox2" Name="id_categoria" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox3" Name="id_prod" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox4" Name="piezas_prod" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox5" Name="fecha_ped" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox6" Name="costo_ped" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox7" Name="id_pedido" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">
                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_pedido" DataSourceID="VerPedido" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="id_pedido" HeaderText="id_pedido" InsertVisible="False" ReadOnly="True" SortExpression="id_pedido" />
                                <asp:BoundField DataField="piezas_prod" HeaderText="piezas_prod" SortExpression="piezas_prod" />
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
                        <asp:SqlDataSource ID="VerPedido" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_pedido], [piezas_prod] FROM [pedido]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="VerProveedor" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_prov], [nom_prov] FROM [proveedores]"></asp:SqlDataSource>
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_prov" DataSourceID="VerProveedor" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="id_prov" HeaderText="id_prov" InsertVisible="False" ReadOnly="True" SortExpression="id_prov" />
                                <asp:BoundField DataField="nom_prov" HeaderText="nom_prov" SortExpression="nom_prov" />
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
                    </td>
                    <td>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_categoria" DataSourceID="VerCategoria" GridLines="Horizontal" Width="250px">
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
                        <asp:SqlDataSource ID="VerCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT * FROM [categoria]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="VerProducto" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_prod], [nom_prod] FROM [producto]"></asp:SqlDataSource>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_prod" DataSourceID="VerProducto" GridLines="Horizontal">
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
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
