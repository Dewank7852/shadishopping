<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="419px" Style="z-index: 100; left: 183px;
        position: absolute; top: 28px" Width="390px" BorderColor="#C00000" BorderStyle="Double">
        <table style="z-index: 102; left: 12px; width: 352px; position: absolute; top: 21px;
            height: 329px">
            <tr>
                <td style="width: 102px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
                        Font-Size="Large" ForeColor="#C00000" Style="z-index: 100; left: 5px; position: absolute;
                        top: 46px" Text="Customer Id"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Order Id" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#C00000" style="z-index: 102; left: 4px; position: absolute; top: 7px" Font-Names="Estrangelo Edessa"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtoid" runat="server" style="z-index: 100; left: 187px; position: absolute; top: 7px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 102px">
                    &nbsp;</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcustid" runat="server" Style="z-index: 100; left: 188px; position: absolute;
                        top: 43px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 102px; height: 23px;">
                    <asp:Label ID="Label4" runat="server" Text="Discount" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#C00000" Font-Names="Estrangelo Edessa"></asp:Label></td>
                <td style="width: 100px; height: 23px;">
                    <asp:TextBox ID="txtdiscount" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 102px">
                    <asp:Label ID="Label5" runat="server" Text="Tax" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#C00000" Font-Names="Estrangelo Edessa"></asp:Label>
                    <asp:TextBox ID="txtshipch" runat="server" Style="z-index: 100; left: 191px; position: absolute;
                        top: 168px"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txttax" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 102px">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                        ForeColor="#C00000" Style="z-index: 100; left: 6px; position: absolute; top: 166px"
                        Text="Shippment_Charge" Width="145px" Font-Names="Estrangelo Edessa"></asp:Label>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 102px; height: 21px">
                    <asp:Label ID="Label6" runat="server" Text="Amount Payable" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#C00000" Width="170px" Font-Names="Estrangelo Edessa"></asp:Label></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="txtamount" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 102px">
                    <asp:Label ID="Label7" runat="server" Text="Payment Mode" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#C00000" Width="158px" Font-Names="Estrangelo Edessa"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtpaymode" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 102px; height: 17px">
                    <asp:Label ID="Label8" runat="server" Text="Credit Card No" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#C00000" Width="154px" Font-Names="Estrangelo Edessa"></asp:Label></td>
                <td style="width: 100px; height: 17px">
                    <asp:TextBox ID="txtcredit" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 187px; position: absolute;
            top: 359px" Text="Submit" BorderColor="Green" BorderStyle="Dashed" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Style="z-index: 103; left: 269px; position: absolute;
            top: 358px" Text="Reset" Width="62px" BorderColor="Green" BorderStyle="Dashed" OnClick="Button2_Click" />
    </asp:Panel>
    &nbsp;<br />
    <br />
    &nbsp;<br />
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
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
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
</asp:Content>

