<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bempleado.aspx.vb" Inherits="BLACKMOON.Bempleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Lucida Handwriting'; font-style: normal; font-variant: normal; color: #FFFFFF; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
            BUSCAR EMPLEADO POR ROL<br />
            <br />
            Rol del empleado:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="BuscarEmpleado" DataTextField="rol_empl" DataValueField="rol_empl" Font-Names="Century Gothic" Width="155px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="BuscarEmpleado" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT [rol_empl] FROM [empleado2]"></asp:SqlDataSource>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_empl" DataSourceID="RolEmpleado" ForeColor="Black" Font-Names="Century Gothic">
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
            <asp:SqlDataSource ID="RolEmpleado" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT * FROM     empleado2
WHERE rol_empl = @rol_empl">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="rol_empl" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
