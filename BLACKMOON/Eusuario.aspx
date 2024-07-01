<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Eusuario.aspx.vb" Inherits="BLACKMOON.Eusuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 89%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: &quot;Lucida Handwriting&quot;; font-style: normal; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block; color: #FFFFFF">
        <div>
            ELIMINAR USUARIO<br />
            <br />
            ID Usuario:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="White" BorderStyle="Double" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#CC99FF" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="Eliminar Usuario" Width="192px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt; Volver al inicio" />
            <br />
            <br />
            <table align="center" class="auto-style1">
                <tr>
                    <td>
            <asp:SqlDataSource ID="EliminarUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand=" DELETE FROM Login
    WHERE [id_usuario] = @id_usuario;
SELECT * FROM Login ORDER BY id_usuario">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="id_usuario" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_usuario" DataSourceID="EliminarUsuario" Font-Names="Century Gothic" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="FechaCreacion" HeaderText="FechaCreacion" SortExpression="FechaCreacion" />
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
                    </td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_usuario" DataSourceID="SqlDataSource1" Font-Names="Century Gothic" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
                                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_usuario], [Usuario] FROM [Login]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
