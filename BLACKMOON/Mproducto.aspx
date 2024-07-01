<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Mproducto.aspx.vb" Inherits="BLACKMOON.Mproducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 645px;
        }
        .auto-style3 {
            width: 212px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 164px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: &quot;Lucida Handwriting&quot;; color: #FFFFFF; text-align: center; word-spacing: normal; letter-spacing: normal; background-color: #000080; background-position: center center; border: medium double #00FFFF">
        <div>
            <br />
            MODIFICAR PRODUCTO<br />
            <br />
            <br />
            ID Producto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="Double" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            ID Categoría:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="White" BorderStyle="Double" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="White" BorderStyle="Double"></asp:TextBox>
            <br />
            <br />
            Descripción:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="White" BorderStyle="Double" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Precio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" BorderColor="White" BorderStyle="Double"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#CC99FF" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="Modificar" Width="220px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt; Volver al inicio" />
&nbsp;<br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_prod" DataSourceID="ModificarProducto" ForeColor="Black" Font-Names="Century Gothic">
                            <Columns>
                                <asp:BoundField DataField="id_prod" HeaderText="id_prod" InsertVisible="False" ReadOnly="True" SortExpression="id_prod" />
                                <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" />
                                <asp:BoundField DataField="nom_prod" HeaderText="nom_prod" SortExpression="nom_prod" />
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
                        <asp:SqlDataSource ID="ModificarProducto" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="UPDATE [producto] SET [id_categoria] = @id_categoria, [nom_prod] = @nom_prod, [desc_prod] = @desc_prod, [precio_prod] = @precio_prod WHERE [id_prod] = @id_prod; SELECT * FROM producto WHERE [id_prod] = @id_prod">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="id_categoria" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox2" Name="nom_prod" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox3" Name="desc_prod" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox4" Name="precio_prod" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox5" Name="id_prod" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_prod" DataSourceID="verProd" Font-Names="Century Gothic" GridLines="Horizontal">
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
                        <asp:SqlDataSource ID="verProd" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_prod], [nom_prod] FROM [producto]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" CssClass="auto-style4" DataKeyNames="id_categoria" DataSourceID="VerCategoria" Font-Names="Century Gothic" GridLines="Horizontal">
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
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
