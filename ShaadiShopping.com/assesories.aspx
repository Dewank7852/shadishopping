<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="assesories.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="Monotype Corsiva"
        Font-Size="XX-Large" ForeColor="#C00000" Style="z-index: 100; left: 11px; position: absolute;
        top: 17px" Text="Welcome " Width="111px"></asp:Label>
    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="Monotype Corsiva"
        Font-Size="XX-Large" ForeColor="Green" Height="38px" Style="z-index: 101; left: 126px;
        position: absolute; top: 15px" Text="Label" Width="80px"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Lucida Calligraphy"
        Font-Size="X-Large" ForeColor="#C00000" Style="z-index: 102; left: 11px; position: absolute;
        top: 66px" Text="Shop For Your Shaadi Now!..."></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Italic="True"
        Font-Names="Monotype Corsiva" Font-Size="Large" OnClick="LinkButton4_Click" Style="z-index: 105;
        left: 876px; position: absolute; top: 2px">Sign out</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="389px" Style="z-index: 104; left: 46px; position: absolute; top: 171px"
        Width="646px">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="306px" ImageUrl="~/images/DSC_0475.JPG"
            OnClick="ImageButton1_Click" Style="z-index: 100;
            left: 220px; position: absolute; top: 13px" Width="201px" PostBackUrl="~/Bride.aspx" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="306px" ImageUrl="~/images/DSC_0291.JPG"
            PostBackUrl="~/Groom.aspx" Style="z-index: 101; left: 6px; position: absolute;
            top: 13px" Width="207px" OnClick="ImageButton2_Click" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="304px" ImageUrl="~/images/wedding-300x294.jpg"
            PostBackUrl="~/General.aspx" Style="z-index: 102; left: 427px; position: absolute;
            top: 14px" Width="212px" />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/Groom.aspx"
            Style="z-index: 103; left: 62px; position: absolute; top: 340px" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon">Groom Special</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/General.aspx" Style="z-index: 104;
            left: 477px; position: absolute; top: 336px" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon">General Assesories</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Bride.aspx" Style="z-index: 106;
            left: 272px; position: absolute; top: 340px" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon">Bride Special</asp:LinkButton>
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
</asp:Content>

