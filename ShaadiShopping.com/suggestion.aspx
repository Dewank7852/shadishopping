<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="suggestion.aspx.cs" Inherits="Default3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server" Height="145px" Style="z-index: 100; left: 111px;
        position: absolute; top: 46px" Width="413px" BorderColor="#C00000" BorderStyle="Double">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 9px; position: absolute;
        top: 20px" Text="Customer ID" Font-Bold="False" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
    <asp:TextBox ID="txtcid" runat="server" Style="z-index: 101; left: 135px; position: absolute;
        top: 18px" Width="173px"></asp:TextBox>
    &nbsp;
    <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 8px; position: absolute;
        top: 61px" Text="Suggestion/Queries" Font-Bold="False" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
    <asp:TextBox ID="txtsugg" runat="server" Style="z-index: 103; left: 136px; position: absolute;
        top: 61px" TextMode="MultiLine" Width="172px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Style="z-index: 104; left: 361px; position: absolute;
        top: 117px" Text="Send" OnClick="Button1_Click" BorderColor="Green" BorderStyle="Dashed" />
        &nbsp;&nbsp;
    </asp:Panel>
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True"
        Font-Names="Monotype Corsiva" Font-Size="Large" OnClick="LinkButton1_Click" Style="z-index: 102;
        left: 871px; position: absolute; top: 0px">Sign out</asp:LinkButton>
</asp:Content>

