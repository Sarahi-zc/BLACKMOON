<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Iempleado.aspx.vb" Inherits="BLACKMOON.Iempleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style2 {
            margin-top: 10px;
            margin-bottom: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: &quot;Lucida Handwriting&quot;; color: #FFFFFF; text-align: center; word-spacing: normal; letter-spacing: normal; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
        <p style="text-align: center">
            NUEVO EMPLEADO</p>
        <p>
            &nbsp;Nombre:&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Double" Width="178px" BorderColor="White" Font-Names="Century Gothic"></asp:TextBox>
        </p>
            <p>
                Edad: &nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Double" CssClass="auto-style3" Width="178px" BorderColor="White" Font-Names="Century Gothic"></asp:TextBox>
        </p>
            <p>
                Rol:&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Email" BorderStyle="Double" ForeColor="Black" Width="178px" BorderColor="White" Font-Names="Century Gothic"></asp:TextBox>
        </p>
            <p>
                &nbsp;</p>
            <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Registrar Empleado" Width="214px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
        </p>
            <p>
                &nbsp;</p>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_empl" DataSourceID="InsertarEmpleado" ForeColor="Black" Font-Names="Century Gothic">
                <Columns>
                    <asp:BoundField DataField="id_empl" HeaderText="id_empl" ReadOnly="True" SortExpression="id_empl" />
                    <asp:BoundField DataField="nom_empl" HeaderText="nom_empl" SortExpression="nom_empl" />
                    <asp:BoundField DataField="edad_empl" HeaderText="edad_empl" SortExpression="edad_empl" />
                    <asp:BoundField DataField="rol_empl" HeaderText="rol_empl" SortExpression="rol_empl" />
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
            <asp:SqlDataSource ID="InsertarEmpleado" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand=" INSERT INTO [dbo].[empleado2]
	([nom_empl]
	,[edad_empl]
	,[rol_empl])
    VALUES (@nom_empl, @edad_empl, @rol_empl);
	SELECT * FROM empleado2 WHERE [nom_empl] = @nom_empl">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="nom_empl" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="edad_empl" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox4" Name="rol_empl" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
