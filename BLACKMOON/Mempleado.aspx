<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Mempleado.aspx.vb" Inherits="BLACKMOON.Mempleado" %>

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
        .auto-style4 {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: &quot;Lucida Handwriting&quot;; font-style: normal; color: #FFFFFF; text-align: center; white-space: normal; letter-spacing: inherit; word-spacing: inherit; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
        <p style="text-align: center">
            MODIFICAR EMPLEADO</p>
            <p style="text-align: center">
                ID empleado:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Double" Width="178px" BorderColor="White" Font-Names="Century Gothic" TextMode="Number"></asp:TextBox>
            </p>
        <p>
            &nbsp;Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Double" CssClass="auto-style3" Width="178px" BorderColor="White" Font-Names="Century Gothic"></asp:TextBox>
        </p>
            <p>
                Edad: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Email" BorderStyle="Double" ForeColor="Black" Width="178px" BorderColor="White"></asp:TextBox>
        </p>
            <p>
                Rol:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox5" runat="server" AutoCompleteType="Email" BorderStyle="Double" ForeColor="Black" Width="178px" BorderColor="White"></asp:TextBox>
                &nbsp;
        </p>
            <p>
                &nbsp;</p>
            <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Actualizar Empleado" Width="214px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
        </p>
            <p>
                &nbsp;</p>
            <table align="center" class="auto-style4">
                <tr>
                    <td>
                <asp:SqlDataSource ID="ModificarEmpleado" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand=" UPDATE [empleado2]
    SET [nom_empl] = @nom_empl, 
		[edad_empl] = @edad_empl, 
		[rol_empl] = @rol_empl
    WHERE [id_empl] = @id_empl;
	SELECT * FROM empleado2 WHERE [id_empl] = @id_empl">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox3" Name="nom_empl" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox4" Name="edad_empl" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox5" Name="rol_empl" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="id_empl" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_empl" DataSourceID="ModificarEmpleado" Font-Names="Century Gothic" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="id_empl" HeaderText="id_empl" InsertVisible="False" ReadOnly="True" SortExpression="id_empl" />
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
                    </td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id_empl" DataSourceID="verEmpleados" Font-Names="Century Gothic" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="id_empl" HeaderText="id_empl" InsertVisible="False" ReadOnly="True" SortExpression="id_empl" />
                                <asp:BoundField DataField="nom_empl" HeaderText="nom_empl" SortExpression="nom_empl" />
                                <asp:BoundField DataField="edad_empl" HeaderText="edad_empl" SortExpression="edad_empl" />
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
                        <asp:SqlDataSource ID="verEmpleados" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT * FROM [empleado2]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
