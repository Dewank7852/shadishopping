<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="inventory.aspx.cs" Inherits="inventory" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
    <asp:Panel ID="Panel1" runat="server" Height="589px" Style="z-index: 101; left: 127px;
        position: absolute; top: 40px" Width="486px" BorderColor="#C00000" BorderStyle="Double"> 
        <table id="table1" runat ="server"   style="z-index: 102; left: 47px; width: 427px; position: absolute; top: 61px;
        height: 421px">
        <tr>
            <td valign ="top" style="height: 36px; width: 191px;">
             <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Text="Product Name" Width="150px" Height="23px" style="z-index: 100; left: 3px; position: absolute; top: 9px"></asp:Label>
            </td>
            <td valign ="top" style="height: 36px; width: 467px;">
                &nbsp;
                <asp:DropDownList ID="ddpna" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1"
                    Style="z-index: 100; left: 188px; position: absolute; top: 7px" Width="156px" AutoPostBack="True">
                    <asp:ListItem>-----Select----</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
                <asp:TextBox ID="txtprona" runat="server" Style="z-index: 102; left: 188px; position: absolute;
                    top: 6px" Visible="False" BorderColor="Transparent"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td align="left" style="width: 191px; height: 11px;" valign="middle">
               
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Text="Product Id" style="z-index: 100; left: 6px; position: absolute; top: 41px"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Style="z-index: 102; left: 6px; position: absolute; top: 75px"
                    Text="Item Id" Width="97px"></asp:Label>
            </td>
            <td style="width: 467px; height: 11px;">
                <asp:TextBox ID="txtpid" runat="server" BorderColor="Transparent" style="z-index: 100; left: 190px; position: absolute; top: 42px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 191px; height: 32px;" valign="middle">
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddiid" runat="server" Style="z-index: 100; left: 189px;
                    position: absolute; top: 71px" Width="157px" AutoPostBack="True" OnSelectedIndexChanged="ddiid_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:TextBox ID="txtiid" runat="server" BorderColor="Transparent"
                    Style="z-index: 102; left: 190px; position: absolute; top: 71px"></asp:TextBox>
                </td>
            <td style="width: 467px; height: 32px;">
                &nbsp;&nbsp;
                <asp:TextBox ID="txtcat" runat="server" BorderColor="Transparent"
                    Style="z-index: 100; left: 193px; position: absolute; top: 109px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 191px; height: 29px;" valign="middle">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Text="Category" style="z-index: 100; left: 6px; position: absolute; top: 104px"></asp:Label></td>
            <td style="width: 467px; height: 29px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" style="width: 191px; height: 31px;" valign="middle">
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
        ForeColor="Maroon" Style="z-index: 100; left: 2px; position: absolute; top: 141px"
        Text="Item Brand" Width="113px"></asp:Label>
                </td>
            <td style="width: 467px; height: 31px;">
                <asp:TextBox ID="txtpp" runat="server" BorderColor="Transparent" style="z-index: 100; left: 192px; position: absolute; top: 178px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 191px; height: 38px;" valign="middle">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Text="Selling Price" Width="138px" style="z-index: 100; left: 6px; position: absolute; top: 220px"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Text="Purchased Price" Width="178px" style="z-index: 102; left: 5px; position: absolute; top: 179px"></asp:Label>
                </td>
            <td style="width: 467px; height: 38px;">
                <asp:TextBox ID="txtbrand" runat="server" Style="z-index: 100; left: 190px; position: absolute;
                    top: 141px" BorderColor="Transparent"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="left" style="width: 191px; height: 40px;" valign="middle">
                </td>
            <td style="width: 467px; height: 40px;">
                <asp:TextBox ID="txtsp" runat="server" BorderColor="Transparent" style="z-index: 100; left: 192px; position: absolute; top: 220px" OnTextChanged="txtsp_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 191px; height: 41px;" valign="middle">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Text="Stock In Hand" Width="153px"></asp:Label></td>
            <td style="width: 467px; height: 41px;">
                <asp:TextBox ID="txtstock" runat="server" BorderColor="Transparent" style="z-index: 100; left: 192px; position: absolute; top: 268px" OnTextChanged="txtstock_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 191px; height: 43px;" valign="middle">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Text="Last Update" Width="136px"></asp:Label></td>
            <td style="width: 467px; height: 43px;">
                <asp:TextBox ID="txtupdate" runat="server" BorderColor="Transparent" style="z-index: 100; left: 192px; position: absolute; top: 313px"></asp:TextBox></td>
        </tr>
            <tr>
                <td align="left" style="width: 191px; height: 34px" valign="middle">
                    <asp:TextBox ID="txttax" runat="server" BorderColor="Transparent" Style="z-index: 100;
                        left: 192px; position: absolute; top: 353px"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
                        Font-Size="Large" ForeColor="Maroon" Height="16px" Style="z-index: 102; left: 2px;
                        position: absolute; top: 397px" Text="Discount"></asp:Label>
                </td>
                <td style="width: 467px; height: 34px">
                </td>
            </tr>
        <tr>
            <td align="left" style="width: 191px; height: 41px" valign="middle">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Style="z-index: 100; left: 6px; position: absolute; top: 443px"
                    Text="Item Image"></asp:Label>
                &nbsp; &nbsp;
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
                    Font-Size="Large" ForeColor="Maroon" Style="z-index: 102; left: 5px; position: absolute;
                    top: 354px" Text="Tax "></asp:Label>
            </td>
            <td style="width: 467px; height: 41px">
                &nbsp;&nbsp;
                <asp:Button ID="butsubmit" runat="server" Style="z-index: 100; left: 105px; position: absolute;
                    top: 489px" Text="Submit" Width="64px" BorderColor="Green" BorderStyle="Dashed" OnClick="butsubmit_Click" />
                &nbsp;
                <asp:Button ID="butreset" runat="server" Style="z-index: 102; left: 288px; position: absolute;
                    top: 489px" Text="Reset" Width="64px" BorderColor="Green" BorderStyle="Dashed" OnClick="butreset_Click" />
                <asp:TextBox ID="txtdiss" runat="server" BorderColor="Transparent" Style="z-index: 104;
                    left: 192px; position: absolute; top: 395px"></asp:TextBox>
            </td>
        </tr>
            <tr>
                <td align="left" style="width: 191px; height: 43px" valign="middle">
                </td>
                <td style="width: 467px; height: 43px">
                    <asp:TextBox ID="txtimg" runat="server" Style="z-index: 100; left: 190px; position: absolute;
                        top: 438px"></asp:TextBox>
    <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Transparent"
        Style="z-index: 102; left: 190px; position: absolute; top: 436px" Width="156px" />
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 191px; height: 51px" valign="middle">
    <asp:Button ID="butupdate" runat="server" OnClick="Button1_Click" Style="z-index: 100;
        left: 9px; position: absolute; top: 489px" Text="Update"
        Width="62px" BorderColor="Green" BorderStyle="Dashed" />
                </td>
                <td style="width: 467px; height: 51px">
                    <asp:Button ID="Button2" runat="server" BorderColor="Green" BorderStyle="Dashed"
                        Style="z-index: 100; left: 195px; position: absolute; top: 489px" Text="Delete" OnClick="Button2_Click1" Width="64px" />
                </td>
            </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
        Font-Underline="True" ForeColor="Green" Style="z-index: 103; left: 146px; position: absolute;
        top: 19px" Text="Stock Information" ToolTip="Fill the Product Information!"></asp:Label>
    </asp:Panel>
    &nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
   
    <br />
    <asp:Panel ID="Panel3" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="271px" Style="z-index: 106; left: 132px; position: absolute; top: 37px"
        Width="477px">
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
            Font-Size="X-Large" Font-Underline="True" ForeColor="Green" Style="z-index: 100;
            left: 152px; position: absolute; top: 6px" Text="Advertisements"></asp:Label>
        &nbsp;
        <table style="z-index: 102; left: 33px; width: 400px; position: absolute; top: 47px;
            height: 139px">
            <tr>
                <td style="width: 100px; height: 40px">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
                        Font-Size="Large" ForeColor="Maroon" Style="z-index: 100; left: 1px; position: absolute;
                        top: 10px" Text="Company Id" Width="122px"></asp:Label>
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
                        Font-Size="Large" ForeColor="Maroon" Style="z-index: 101; left: 3px; position: absolute;
                        top: 55px" Text="Advertisement Image" Width="169px"></asp:Label>
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
                        Font-Size="Large" ForeColor="Maroon" Style="z-index: 103; left: 5px; position: absolute;
                        top: 93px" Text="Company Url" Width="157px"></asp:Label>
                </td>
                <td style="width: 100px; height: 40px">
                    <asp:DropDownList ID="ddcomp" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddcomp_SelectedIndexChanged"
                        Style="z-index: 100; left: 216px; position: absolute; top: 13px" Width="154px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 36px">
                </td>
                <td style="width: 100px; height: 36px">
                    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 216px; position: absolute;
                        top: 52px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 38px">
                </td>
                <td style="width: 100px; height: 38px">
                    <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 100; left: 216px; position: absolute;
                        top: 94px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 35px">
                </td>
                <td style="width: 100px; height: 35px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Style="z-index: 100;
                        left: 290px; position: absolute; top: 133px" Text="Submit" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True"
        Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="#C00000" OnClick="LinkButton1_Click"
        Style="z-index: 103; left: 737px; position: absolute; top: 256px">Advertisement</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Italic="True"
        Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="#C00000" OnClick="LinkButton2_Click"
        Style="z-index: 104; left: 735px; position: absolute; top: 220px">Stock Information</asp:LinkButton>
    <br />
                <br />
    <br />
    <br />
    <br />
    <br />
    -<br />
    <br />
    <br />
    <br />
    &nbsp;
    &nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="310px" Style="z-index: 105; left: 678px; position: absolute; top: 301px"
        Width="253px">
        <asp:Image ID="Image1" runat="server" Height="296px" Style="z-index: 100; left: 7px;
            position: absolute; top: 6px" Width="238px" />
    </asp:Panel>
    &nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;
    <br />
    <br />
    &nbsp;
    <br />
    <br />
</asp:Content>

