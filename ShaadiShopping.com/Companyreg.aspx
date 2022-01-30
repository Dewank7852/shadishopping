<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Companyreg.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="413px" Style="z-index: 100; left: 61px;
        position: absolute; top: 61px" Width="434px" BorderColor="Maroon" BorderStyle="Double">
        <table style="z-index: 100; left: 38px; width: 363px; position: absolute; top: 33px;
            height: 366px">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 13px; position: absolute;
                        top: 6px" Text="Company Id" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="#C00000"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcid" runat="server" Style="z-index: 100; left: 179px; position: absolute;
                        top: 4px" Width="143px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px;">
                    <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 14px; position: absolute;
                        top: 36px" Text="Company Name" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="#C00000" Width="106px"></asp:Label>
                </td>
                <td style="width: 100px; height: 24px;">
                    <asp:TextBox ID="txtcname" runat="server" Style="z-index: 100; left: 179px; position: absolute;
                        top: 37px" Width="142px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 17px;">
                    <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 16px; position: absolute;
                        top: 68px" Text="Password" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="#C00000"></asp:Label>
                </td>
                <td style="width: 100px; height: 17px;">
                    <asp:TextBox ID="txtpass" runat="server" Style="z-index: 100; left: 180px; position: absolute;
                        top: 65px" TextMode="Password" Width="142px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 27px;">
                    <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 14px; position: absolute;
                        top: 102px" Text="Product Name" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="#C00000" Width="116px"></asp:Label>
                </td>
                <td style="width: 100px; height: 27px;">
                    <asp:TextBox ID="txtpname" runat="server" Style="z-index: 100; left: 180px; position: absolute;
                        top: 101px" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 40px;">
                    <asp:Label ID="Label6" runat="server" Style="z-index: 100; left: 10px; position: absolute;
                        top: 143px" Text="Advertisement Image" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="#C00000" Width="140px"></asp:Label>
                </td>
                <td style="width: 100px; height: 40px;">
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 100; left: 181px;
                        position: absolute; top: 145px" Width="148px" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 86px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
                        Font-Size="Medium" ForeColor="#C00000" Style="z-index: 100; left: 14px; position: absolute;
                        top: 189px" Text="Advertisement Description" Width="151px"></asp:Label>
                </td>
                <td style="width: 100px; height: 86px">
                    <asp:TextBox ID="txtadddec" runat="server" Height="93px" Style="z-index: 100; left: 180px;
                        position: absolute; top: 188px" TextMode="MultiLine" Width="144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
                        Font-Size="Medium" ForeColor="#C00000" Style="z-index: 100; left: 15px; position: absolute;
                        top: 301px" Text="Company URL" Width="107px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcurl" runat="server" Style="z-index: 100; left: 182px; position: absolute;
                        top: 301px" Width="145px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px;">
                    <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 48px; position: absolute;
                        top: 335px" Text="Submit" OnClick="Button1_Click" BorderColor="Green" BorderStyle="Dashed" />
                    <asp:Button ID="Button2" runat="server" Style="z-index: 102; left: 213px; position: absolute;
                        top: 334px" Text="Reset" Width="68px" OnClick="Button2_Click" BorderColor="Green" BorderStyle="Dashed" />
                </td>
                <td style="width: 100px; height: 26px;">
                </td>
            </tr>
        </table>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa"
            Font-Size="Large" ForeColor="Green" Style="z-index: 101; left: 139px; position: absolute;
            top: 7px" Text="Company Registration"></asp:Label>
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

