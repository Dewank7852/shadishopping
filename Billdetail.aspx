<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Billdetail.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" Height="297px" Style="z-index: 100; left: 616px;
        position: absolute; top: 232px" Width="300px">
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 100; left: 2px; position: absolute;
            top: 23px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField HeaderText="Delete" SelectText="Delete" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 40px; position: absolute;
            top: 6px" Text="Catalog Status"></asp:Label>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="z-index: 103;
            left: 0px; position: absolute; top: 0px" Text="Button" />
    </asp:Panel>
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
    <asp:Panel ID="Panel2" runat="server" Height="1px" Style="z-index: 102; left: 9px;
        position: absolute; top: 6px" Width="516px" BorderColor="#C00000" BorderStyle="Double">
        &nbsp;
        <table style="z-index: 102; left: 5px; width: 458px; position: absolute; top: 6px;
            height: 259px; vertical-align: middle; text-align: left;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 148px; position: absolute;
                        top: 11px" Text="Shippment Information"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Style="z-index: 101; left: 5px; position: absolute;
                        top: 100px" Text="Customer Id"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Style="z-index: 102; left: 5px; position: absolute;
                        top: 53px" Text="Order Id"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Style="z-index: 103; left: 2px; position: absolute;
                        top: 144px" Text="Shippment Address"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Style="z-index: 105; left: 6px; position: absolute;
                        top: 187px" Text="Contact No."></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 65px; height: 23px;">
                </td>
                <td style="width: 100px; height: 23px;">
                    <asp:TextBox ID="txtoid" runat="server" Style="z-index: 100; left: 191px; position: absolute;
                        top: 55px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 65px">
                    <asp:Panel ID="Panel3" runat="server" BorderColor="#C00000" BorderStyle="Double"
                        Height="378px" Style="z-index: 100; left: -9px; position: absolute; top: 293px"
                        Width="516px">
       
        <table style="z-index: 103; left: 0px; width: 507px; position: absolute; top: 0px;
            height: 352px">
            <tr>
                <td style="width: 100px; height: 1px">
                    <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 162px; position: absolute;
                        top: 12px" Text="Price Detail" Width="185px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 157px">
                 <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Style="z-index: 100;
            left: 9px; position: absolute; top: 45px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                     <Columns>
                         <asp:CommandField HeaderText="Delete" SelectText="Delete" ShowSelectButton="True" />
                     </Columns>
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" Style="z-index: 100; left: 383px; position: absolute;
                        top: 321px" Text="Confirm Purchase" Width="117px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
                    </asp:Panel>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcustid" runat="server" Style="z-index: 100; left: 191px; position: absolute;
                        top: 99px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 65px; height: 21px;">
                </td>
                <td style="width: 100px; height: 21px;">
                    <asp:TextBox ID="txtshipadd" runat="server" Style="z-index: 100; left: 191px; position: absolute;
                        top: 139px" Height="18px" TextMode="MultiLine" Width="146px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 65px">
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcontect" runat="server" Style="z-index: 100; left: 192px; position: absolute;
                        top: 184px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 65px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 361px; position: absolute;
                        top: 228px" Text="continue..." OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
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
    </asp:Panel>
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
</asp:Content>

