<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>


    <asp:Panel ID="Panel1" runat="server" Height="303px" Style="z-index: 100; left: 562px;
        position: absolute; top: 244px" Width="379px" BorderColor="#C00000" BorderStyle="Double">
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 100; left: 2px; position: absolute;
            top: 47px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:CommandField HeaderText="Delete" SelectText="Delete" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 134px; position: absolute;
            top: 3px" Text="Catalog Status" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Large" ForeColor="Green"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click4" Style="z-index: 103;
            left: 272px; position: absolute; top: 325px" Text="Continue..." Width="81px" />
        <br />
        <br />
        <br />
    </asp:Panel>
    <br />
                    <asp:Panel ID="Panel3" runat="server" BorderColor="#C00000" BorderStyle="Double"
                        Height="378px" Style="z-index: 101; left: 23px; position: absolute; top: 42px"
                        Width="516px">
       
        <table style="z-index: 103; left: 3px; width: 512px; position: absolute; top: 4px;
            height: 373px">
            <tr>
                <td style="width: 100px; height: 1px">
                    <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 150px; position: absolute;
                        top: 11px" Text="Price Detail" Width="185px" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" ForeColor="Green"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 157px">
                 <asp:GridView ID="GridView2" runat="server" CellPadding="4" Style="z-index: 100;
            left: 9px; position: absolute; top: 45px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ForeColor="#333333" GridLines="None">
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                     <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" BorderColor="Green" BorderStyle="Dashed"
                        OnClick="Button2_Click1" Style="z-index: 100; left: 344px; position: absolute;
                        top: 337px" Text="Conform Purchase" />
                </td>
            </tr>
        </table>
                    </asp:Panel>
    <br />
    <br />
    <asp:Panel ID="Panel4" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="628px" Style="z-index: 102; left: 18px; position: absolute; top: 39px"
        Width="611px">
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
            Font-Size="XX-Large" ForeColor="#00C000" Style="z-index: 100; left: 252px; position: absolute;
            top: 3px" Text="Invoice"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <table style="z-index: 104; left: 55px; width: 487px; position: absolute; top: 57px;
            height: 61px">
            <tr>
                <td style="width: 100px; height: 25px">
                    <asp:Label ID="Label18" runat="server" Style="z-index: 100; left: 0px; position: absolute;
                        top: 7px" Text="Order Id"></asp:Label>
                </td>
                <td style="width: 100px; height: 25px">
                    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 262px; position: absolute;
                        top: 4px"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 102; left: 262px; position: absolute;
                        top: 34px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 29px">
                    <asp:Label ID="Label19" runat="server" Style="z-index: 100; left: 2px; position: absolute;
                        top: 37px" Text="Customer Id"></asp:Label>
                </td>
                <td style="width: 100px; height: 29px">
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            Style="z-index: 101; left: 111px; position: absolute; top: 327px">
            <Columns>
                <asp:BoundField DataField="Product_name" HeaderText="Product Name" SortExpression="Product_name" />
                <asp:BoundField DataField="Item_brand" HeaderText="Item Brand" SortExpression="Item_brand" />
                <asp:BoundField DataField="Item_sprice" HeaderText="Item Price" SortExpression="Item_sprice" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Total_cost" HeaderText="Total Cost" SortExpression="Total_cost" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstring %>"
            SelectCommand="SELECT [Product_name], [Item_brand], [Item_sprice], [Quantity], [Total_cost] FROM [Orderdetail] WHERE ([Order_id] = @Order_id)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="o-001" Name="Order_id" SessionField="ord" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
            Font-Size="X-Large" ForeColor="#00C000" Style="z-index: 102; left: 208px; position: absolute;
            top: 286px" Text="Product Details" Width="212px"></asp:Label>
        <table style="z-index: 105; left: 55px; width: 486px; position: absolute; top: 120px;
            height: 142px">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label21" runat="server" Style="z-index: 100; left: 3px; position: absolute;
                        top: 81px" Text="Tax"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 100; left: 261px; position: absolute;
                        top: 7px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label22" runat="server" Style="z-index: 100; left: 4px; position: absolute;
                        top: 45px" Text="Discount "></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 100; left: 260px; position: absolute;
                        top: 42px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label23" runat="server" Style="z-index: 100; left: 4px; position: absolute;
                        top: 10px" Text="Total Cost"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 100; left: 261px; position: absolute;
                        top: 75px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label24" runat="server" Style="z-index: 100; left: 3px; position: absolute;
                        top: 116px" Text="Amount Payable" Width="130px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 100; left: 260px; position: absolute;
                        top: 112px"></asp:TextBox>
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
        <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Green"
            Style="z-index: 106; left: 116px; position: absolute; top: 720px" Text="Note: Customers are requested to get a print copy of invoice..."></asp:Label>
        <br />
    </asp:Panel>
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True"
        Font-Names="Monotype Corsiva" Font-Size="Large" OnClick="LinkButton1_Click" Style="z-index: 106;
        left: 872px; position: absolute; top: 6px">Sign out</asp:LinkButton>
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
    <asp:Panel ID="Panel2" runat="server" Height="1px" Style="z-index: 104; left: 24px;
        position: absolute; top: 39px" Width="505px" BorderColor="#C00000" BorderStyle="Double">
        &nbsp;&nbsp;
        <table style="z-index: 103; left: 3px; width: 498px; position: absolute; top: 3px;
            height: 355px">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 185px; position: absolute;
                        top: 8px" Text="Shippment Information"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 66px; position: absolute;
                        top: 39px" Text="Order Id" Width="61px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtoid" runat="server" Style="z-index: 100; left: 257px; position: absolute;
                        top: 37px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 65px; position: absolute;
                        top: 72px" Text="Customer Id" Width="96px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcustid" runat="server" Style="z-index: 100; left: 258px; position: absolute;
                        top: 67px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 63px; position: absolute;
                        top: 102px" Text="Shippment Address" Width="137px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtshipadd" runat="server" Style="z-index: 100; left: 258px; position: absolute;
                        top: 98px" Height="18px" TextMode="MultiLine" Width="148px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Style="z-index: 100; left: 65px; position: absolute;
                        top: 134px" Text="Contact No." Width="118px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcontect" runat="server" Style="z-index: 100; left: 258px; position: absolute;
                        top: 131px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 30px">
                    <asp:Label ID="Label8" runat="server" Style="z-index: 100; left: 205px; position: absolute;
                        top: 167px" Text="Payment Detail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label11" runat="server" Style="z-index: 100; left: 63px; position: absolute;
                        top: 200px" Text="Account No" Width="110px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtacc" runat="server" Style="z-index: 100; left: 259px; position: absolute;
                        top: 199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 29px;">
                    <asp:Label ID="Label12" runat="server" Style="z-index: 100; left: 63px; position: absolute;
                        top: 234px" Text="Credit Card No" Width="108px"></asp:Label>
                </td>
                <td style="width: 100px; height: 29px;">
                    <asp:TextBox ID="txtccno" runat="server" Style="z-index: 100; left: 261px; position: absolute;
                        top: 233px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 64px; position: absolute;
                        top: 265px" Text="Credit Card Type" Width="128px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtctype" runat="server" Style="z-index: 100; left: 260px; position: absolute;
                        top: 265px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label10" runat="server" Style="z-index: 100; left: 64px; position: absolute;
                        top: 299px" Text="Total Amount" Width="121px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtamt" runat="server" Style="z-index: 100; left: 262px; position: absolute;
                        top: 296px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label14" runat="server" Style="z-index: 100; left: 65px; position: absolute;
                        top: 329px" Text="Discount"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtdiss" runat="server" Style="z-index: 100; left: 263px; position: absolute;
                        top: 325px"></asp:TextBox>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="z-index: 104; left: 4px; width: 496px; position: absolute; top: 359px;
            height: 90px">
            <tr>
                <td style="width: 100px; height: 25px">
                    <asp:Label ID="Label15" runat="server" Style="z-index: 100; left: 63px; position: absolute;
                        top: 5px" Text="Tax on Purchase" Width="125px"></asp:Label>
                </td>
                <td style="width: 100px; height: 25px">
                    <asp:TextBox ID="txttax" runat="server" Style="z-index: 100; left: 262px; position: absolute;
                        top: 3px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 34px">
                    <asp:Label ID="Label16" runat="server" Style="z-index: 100; left: 63px; position: absolute;
                        top: 38px" Text="Amount Payable" Width="115px"></asp:Label>
                </td>
                <td style="width: 100px; height: 34px">
                    <asp:TextBox ID="txtpay" runat="server" Style="z-index: 100; left: 262px; position: absolute;
                        top: 36px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 27px">
                </td>
                <td style="width: 100px; height: 27px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 27px">
                </td>
                <td style="width: 100px; height: 27px">
        <asp:Button ID="Reset" runat="server" OnClick="Button3_Click" Style="z-index: 100;
            left: 263px; position: absolute; top: 100px" Text="Reset" BorderColor="Green" BorderStyle="Dashed" Width="69px" />
                    <asp:Button ID="Submit" runat="server" BorderColor="Green" BorderStyle="Dashed"
                        Style="z-index: 102; left: 352px; position: absolute;
                        top: 100px" Text="Submit" OnClick="Button1_Click2" Width="66px" />
                </td>
            </tr>
        </table>
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
    <asp:Label ID="Label13" runat="server" Style="z-index: 105; left: 63px; position: absolute;
        top: 1px" Text="Label" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="XX-Large" Font-Underline="True" ForeColor="#C00000"></asp:Label>
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

