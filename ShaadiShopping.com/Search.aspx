<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Groom" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Item_id"
      Height="162px" Width="214px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" BackColor="#FFFF66" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5" style="z-index: 100; left: 31px; position: absolute; top: -6px" DataSourceID="SqlDataSource1" SelectedIndex="1">
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Item_image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Item_image") %> ' Height="140px" Width="110px"  />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Product Name" SortExpression="Product_name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Product_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Product_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item Brand" SortExpression="Item_brand">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Item_brand") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Item_brand") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:TemplateField HeaderText="Item Price" SortExpression="Item_sprice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Item_sprice") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Item_sprice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item_id" SortExpression="Item_id" Visible="False">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Item_id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Item_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                <asp:DropDownList ID="quantity" runat="server" Visible="false" >
               <asp:ListItem>-Select-</asp:ListItem>
                <asp:ListItem Text ="1"></asp:ListItem>
                <asp:ListItem Text ="2"></asp:ListItem> 
                <asp:ListItem Text ="3"></asp:ListItem> 
                <asp:ListItem Text ="4"></asp:ListItem> 
                <asp:ListItem Text ="5"></asp:ListItem> 
                <asp:ListItem Text ="6"></asp:ListItem> 
                <asp:ListItem Text ="7"></asp:ListItem> 
                <asp:ListItem Text ="8"></asp:ListItem> 
                <asp:ListItem Text ="9"></asp:ListItem> 
                <asp:ListItem Text ="10"></asp:ListItem> 
                </asp:DropDownList>&nbsp;<asp:Button ID="bt" runat="server" Text="Add To Cart"  OnClick ="addtocart" Visible ="false" />
                                
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select"
                        Text="Select" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <RowStyle BackColor="#FFFF66" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    &nbsp;&nbsp;
    <asp:Panel ID="Panel2" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="67px" Style="z-index: 101; left: 708px; position: absolute; top: 232px"
        Width="231px">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            Style="z-index: 100; left: 60px; position: absolute; top: 8px">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Style="z-index: 101;
            left: 60px; position: absolute; top: 40px" Width="120px">
        </asp:DropDownList>
        <asp:Label ID="Label5" runat="server" Style="z-index: 102; left: 4px; position: absolute;
            top: 40px" Text="Brand"></asp:Label>
        <asp:Label ID="Label6" runat="server" Style="z-index: 103; left: 4px; position: absolute;
            top: 9px" Text="Product"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Style="z-index: 105;
            left: 180px; position: absolute; top: 42px">Search !</asp:LinkButton>
    </asp:Panel>
    &nbsp;
    &nbsp; &nbsp;
    <asp:Label ID="Label1" runat="server" Style="z-index: 102; left: 891px; position: absolute;
        top: -846px" Text="Products"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Height="296px" Style="z-index: 103; left: 604px;
        position: absolute; top: 320px" Width="337px" BorderColor="#C00000" BorderStyle="Double">
        &nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Style="z-index: 100;
            left: 95px; position: absolute; top: 5px" Text="Catalog Status"></asp:Label>
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
        <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" style="z-index: 103; left: 4px; position: absolute; top: 45px" Width="308px">
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="Delete" SelectText="Delete" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 102;
        left: 235px; position: absolute; top: 439px" Text="Continue.." />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
    </asp:Panel>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Italic="True"
        Font-Names="Monotype Corsiva" Font-Size="Large" OnClick="LinkButton2_Click" Style="z-index: 106;
        left: 866px; position: absolute; top: 11px">Sign out</asp:LinkButton>
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstring %>"
        SelectCommand="SELECT [Item_id], [Item_brand], [Item_image], [Quantity], [Item_sprice], [Product_name] FROM [Item] WHERE ([Product_id] = @Product_id)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="p001" Name="Product_id" SessionField="proid"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp;<br />
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
</asp:Content>

