<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Minventario.aspx.vb" Inherits="BLACKMOON.Minventario" %>

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
        }
        .auto-style4 {
            width: 867px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Lucida Handwriting'; font-style: normal; font-variant: normal; color: #FFFFFF; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            <br />
            ACTUALIZAR INVENTARIO<br />
            <br />
            <br />
            ID Inventario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            ID producto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            Cantidad en stock:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Modificar" Width="173px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_Inventario" DataSourceID="modificarInventario" Font-Names="Century Gothic" ForeColor="Black">
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
                        <asp:SqlDataSource ID="modificarInventario" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="UPDATE [Inventario]
    SET [id_Prod] = @id_Prod, 
		[Cantidad_En_Stock] = @Cantidad_En_Stock
    WHERE [id_Inventario] = @id_Inventario;
	Select * FROM Inventario  WHERE [id_Inventario] = @id_Inventario">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="id_Prod" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox2" Name="Cantidad_En_Stock" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox3" Name="id_Inventario" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_prod" DataSourceID="VerProd" Font-Names="Century Gothic" GridLines="Horizontal">
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
                        <asp:SqlDataSource ID="VerProd" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_prod], [nom_prod] FROM [producto]"></asp:SqlDataSource>
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
