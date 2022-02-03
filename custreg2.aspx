<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="custreg2.aspx.cs" Inherits="custreg2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
        ForeColor="Green" Style="z-index: 100; left: 9px; position: absolute; top: 12px"
        Text="Authentication"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="85px" Style="z-index: 105; left: 104px; position: absolute; top: 100px"
        Width="415px">
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 39px; position: absolute;
            top: 23px" Text="User Name"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 39px; position: absolute;
            top: 61px" Text="Password"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 40px; position: absolute;
            top: 101px" Text="Retype Password"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtuname" runat="server" Style="z-index: 103; left: 187px; position: absolute;
            top: 20px"></asp:TextBox>
        <asp:TextBox ID="txtpass" runat="server" Style="z-index: 104; left: 188px; position: absolute;
            top: 61px" TextMode="Password" Width="148px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 106; left: 188px; position: absolute;
            top: 101px" TextMode="Password" Width="147px"></asp:TextBox>
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
    &nbsp;
    <asp:Button ID="Button3" runat="server" BorderColor="#00C000" BorderStyle="Dashed"
        Style="z-index: 102; left: 370px; position: absolute; top: 232px" Text="Cancel" />
    <br />
    <asp:Button ID="Button2" runat="server" BorderColor="#00C000" BorderStyle="Dashed"
        Style="z-index: 103; left: 216px; position: absolute; top: 232px" Text="Submit" />
    <br />
    <br />
    <asp:Button ID="Button4" runat="server" BorderColor="#00C000" BorderStyle="Dashed"
        Style="z-index: 104; left: 294px; position: absolute; top: 232px" Text="Reset"
        Width="60px" />
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

