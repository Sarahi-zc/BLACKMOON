<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Musuario.aspx.vb" Inherits="BLACKMOON.Musuario" %>

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
            width: 800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: &quot;Lucida Handwriting&quot;; font-size: medium; font-style: normal; font-weight: normal; color: #FFFFFF; text-align: center; text-indent: 0px; background-color: #000080; border-style: double; border-width: inherit; border-color: #00FFFF; display: block; position: static; z-index: inherit;">
        <div>
            <br />
            ACTUALIZAR USUARIO<br />
            <br />
            <br />
            ID usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="Double" Font-Names="Century Gothic" TextMode="Number"></asp:TextBox>
            <br />
&nbsp;&nbsp;
            <br />
            Usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="White" BorderStyle="Double" Font-Names="Century Gothic"></asp:TextBox>
            <br />
            <br />
            Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="White" BorderStyle="Double" TextMode="Password" Font-Names="Century Gothic"></asp:TextBox>
&nbsp;&nbsp;
            <br />
            <br />
            E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="White" BorderStyle="Double" TextMode="Email" Font-Names="Century Gothic"></asp:TextBox>
&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#CC99FF" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text=" Actualizar Usuario" Width="220px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt; Volver al inicio" />
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">
            <asp:SqlDataSource ID="ModificarUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="ModificarLogin" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id_usuario" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox2" Name="Usuario" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Contraseña" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="Email" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_usuario" DataSourceID="ModificarUsuario" ForeColor="Black" Height="24px" Width="765px" Font-Names="Century Gothic">
                <Columns>
                    <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="FechaCreacion" HeaderText="FechaCreacion" SortExpression="FechaCreacion" />
                </Columns>
                <EditRowStyle Font-Names="Century Gothic" />
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
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_usuario" DataSourceID="verUsuario" Font-Names="Century Gothic" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
                                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                                <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="FechaCreacion" HeaderText="FechaCreacion" SortExpression="FechaCreacion" />
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
                        <asp:SqlDataSource ID="verUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
