<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="328px" Style="z-index: 100; left: 75px;
        position: absolute; top: 56px" Width="355px" BorderColor="#C00000" BorderStyle="Double">
        +
        <table style="z-index: 100; left: 35px; width: 274px; position: absolute; top: 12px;
            height: 273px">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                        ForeColor="#C00000" Text="Order Id"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtoid" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                        ForeColor="#C00000" Text="Customer Id"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcid" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 35px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                        ForeColor="#C00000" Text="Item Code"></asp:Label></td>
                <td style="width: 100px; height: 35px">
                    <asp:TextBox ID="txticode" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                        ForeColor="#C00000" Text="Quantity"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtquan" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                        ForeColor="#C00000" Text="Date Of Order" Width="120px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtdoorder" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 39px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                        ForeColor="#C00000" Text="Total Cost"></asp:Label></td>
                <td style="width: 100px; height: 39px">
                    <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>&nbsp;
                    <asp:Button ID="Button4" runat="server" Style="z-index: 104; left: 194px; position: absolute;
                        top: 278px" Text="Reset" Width="63px" BorderColor="Green" BorderStyle="Dashed" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    &nbsp;
    <asp:Button ID="Button2" runat="server" Style="z-index: 104; left: 232px; position: absolute;
        top: 350px" Text="Submit" OnClick="Button2_Click" BorderColor="Green" BorderStyle="Dashed" />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
        ForeColor="#004000" Style="z-index: 103; left: 193px; position: absolute; top: 4px"
        Text="Order Form"></asp:Label>
</asp:Content>

