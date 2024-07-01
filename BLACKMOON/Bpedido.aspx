<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bpedido.aspx.vb" Inherits="BLACKMOON.Bpedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            width: 470px;
        }
        


        .auto-style2 {
            margin-top: 10px;
            margin-bottom: 0px;
        }
        .auto-style6 {
            width: 457px;
        }
        .auto-style7 {
            width: 824px;
        }
        .auto-style8 {
            width: 100%;
            height: 344px;
        }
        .auto-style9 {
            width: 596px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Lucida Handwriting'; font-style: normal; font-variant: normal; color: #FFFFFF; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            <br />
            BUSCAR PEDIDO POR FECHA<br />
            <br />
            <br />
            Seleccione una fecha<br />
            <table align="center" class="auto-style3">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#660033" BorderColor="White" BorderStyle="Double" BorderWidth="1px" Font-Names="Century Gothic" Font-Size="9pt" ForeColor="White" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Buscar Pedido" Width="201px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <table align="center" class="auto-style8">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_pedido" DataSourceID="BuscarPedido" Font-Names="Century Gothic" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="id_pedido" HeaderText="id_pedido" InsertVisible="False" ReadOnly="True" SortExpression="id_pedido" />
                                <asp:BoundField DataField="id_prov" HeaderText="id_prov" SortExpression="id_prov" />
                                <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" />
                                <asp:BoundField DataField="id_prod" HeaderText="id_prod" SortExpression="id_prod" />
                                <asp:BoundField DataField="piezas_prod" HeaderText="piezas_prod" SortExpression="piezas_prod" />
                                <asp:BoundField DataField="fecha_ped" HeaderText="fecha_ped" SortExpression="fecha_ped" />
                                <asp:BoundField DataField="costo_ped" HeaderText="costo_ped" SortExpression="costo_ped" />
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
                        <asp:SqlDataSource ID="BuscarPedido" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="BuscarPedido" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="fecha_ped" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
