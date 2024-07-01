<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="lusuario.aspx.vb" Inherits="BLACKMOON.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1346px;
            height: 718px;
        }
        .auto-style2 {
            margin-top: 10px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1" property="og:image:secure_url" style="border-style: double; border-width: inherit; border-color: #00FFFF; margin: inherit; padding: inherit; background-position: center center; background-color: #000080; background-image: none; text-align: center; white-space: normal; letter-spacing: normal; vertical-align: text-bottom; position: static; z-index: auto; width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto; font-style: inherit; font-family: 'Lucida Handwriting'; font-size: medium; font-weight: normal; font-variant: inherit; text-transform: inherit; color: #FFFFFF; display: block;">
        <p style="text-align: center">
            Nuevo usuario</p>
        <p>
            &nbsp;&nbsp; Usuario:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Double" Width="178px"></asp:TextBox>
        </p>
        <p>
            Contraseña:&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Double" TextMode="Password" CssClass="auto-style3" Width="178px"></asp:TextBox>
        </p>
        <p>
            Email:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Email" BorderStyle="Double" ForeColor="Black" TextMode="Email" Width="178px"></asp:TextBox>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Nuevo Usuario" Width="173px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="id_usuario" DataSourceID="SqlDataSource1" Font-Names="Century Gothic" CellSpacing="2" ForeColor="Black">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="InsertarLogin" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="Usuario" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="Contraseña" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="Email" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
