<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Icliente.aspx.vb" Inherits="BLACKMOON.Icliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: &quot;Lucida Handwriting&quot;; color: #FFFFFF; text-align: center; word-spacing: normal; letter-spacing: normal; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            CREAR NUEVO CLIENTE
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#9933FF" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="Crear" Width="120px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt; Volver al inicio" />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_clie" DataSourceID="InsertarCliente" Font-Names="Century Gothic" ForeColor="Black">
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
            <asp:SqlDataSource ID="InsertarCliente" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="   INSERT INTO [dbo].[cliente]
	([nom_clie],
	[tel_clie], 
	[email_clie])
    VALUES (@nom_clie, @tel_clie, @email_clie);
	SELECT * FROM cliente WHERE [nom_clie] = @nom_clie">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="nom_clie" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="tel_clie" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="email_clie" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
