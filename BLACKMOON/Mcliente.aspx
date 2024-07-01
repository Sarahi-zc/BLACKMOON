<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Mcliente.aspx.vb" Inherits="BLACKMOON.Mcliente" %>

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
            width: 740px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: &quot;Lucida Handwriting&quot;; font-style: normal; color: #FFFFFF; text-align: center; letter-spacing: normal; word-spacing: normal; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
            <br />
            MODIFICAR CLIENTE
            <br />
            <br />
            ID cliente:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="Double" Font-Names="Century Gothic"></asp:TextBox>
            <br />
            <br />
            Telefono:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="White" BorderStyle="Double" Font-Names="Century Gothic" TextMode="Phone"></asp:TextBox>
            <br />
            <br />
            E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="White" BorderStyle="Double" Font-Names="Century Gothic" TextMode="Email"></asp:TextBox>
&nbsp;
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#9933FF" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="Modificar" Width="120px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt; Volver al inicio" />
            <br />
            <br />
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">
            <asp:SqlDataSource ID="ModificarCliente" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="UPDATE [cliente] SET [nom_clie] = @nom_clie, [tel_clie] = @tel_clie, [email_clie] = @email_clie WHERE [id_clie] = @id_clie; SELECT * FROM cliente WHERE [id_clie] = @id_clie">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="nom_clie" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="tel_clie" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="email_clie" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="id_clie" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_clie" DataSourceID="ModificarCliente" Font-Names="Century Gothic" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="id_clie" HeaderText="id_clie" InsertVisible="False" ReadOnly="True" SortExpression="id_clie" />
                    <asp:BoundField DataField="nom_clie" HeaderText="nom_clie" SortExpression="nom_clie" />
                    <asp:BoundField DataField="tel_clie" HeaderText="tel_clie" SortExpression="tel_clie" />
                    <asp:BoundField DataField="email_clie" HeaderText="email_clie" SortExpression="email_clie" />
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
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_clie" DataSourceID="verCliente" Font-Names="Century Gothic" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="id_clie" HeaderText="id_clie" InsertVisible="False" ReadOnly="True" SortExpression="id_clie" />
                                <asp:BoundField DataField="nom_clie" HeaderText="nom_clie" SortExpression="nom_clie" />
                                <asp:BoundField DataField="email_clie" HeaderText="email_clie" SortExpression="email_clie" />
                                <asp:BoundField DataField="tel_clie" HeaderText="tel_clie" SortExpression="tel_clie" />
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
                        <asp:SqlDataSource ID="verCliente" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [id_clie], [nom_clie], [email_clie], [tel_clie] FROM [cliente]"></asp:SqlDataSource>
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
