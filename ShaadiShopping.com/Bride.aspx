<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bride.aspx.cs" Inherits="Groom" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Item_id"
      Height="162px" Width="214px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" BackColor="#FFFF66" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5" style="z-index: 100; left: 3px; position: absolute; top: 5px" DataSourceID="SqlDataSource1" SelectedIndex="1">
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
    <asp:Panel ID="Panel2" runat="server" Height="50px" Style="z-index: 101; left: 691px;
        position: absolute; top: 225px" Width="247px" BorderColor="#C00000" BorderStyle="Double">
        <asp:DropDownList ID="ddpname" runat="server"
            DataTextField="Product_name" DataValueField="Product_id" Style="z-index: 100;
            left: 121px; position: absolute; top: 16px" Width="123px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        &nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 24px; position: absolute;
            top: 19px" Text="Products" Font-Bold="True" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
    </asp:Panel>
    &nbsp; &nbsp;
    <asp:Label ID="Label1" runat="server" Style="z-index: 102; left: 891px; position: absolute;
        top: -846px" Text="Products"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Height="296px" Style="z-index: 103; left: 586px;
        position: absolute; top: 297px" Width="355px" BorderColor="#C00000" BorderStyle="Double">
        <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" style="z-index: 100; left: 1px; position: absolute; top: 34px" Width="308px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="Delete" SelectText="Delete" ShowSelectButton="True" >
                    <ControlStyle BorderColor="Green" BorderStyle="Dashed" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Style="z-index: 101;
            left: 127px; position: absolute; top: 6px" Text="Catalog Status" Font-Italic="True" Font-Names="Estrangelo Edessa" ForeColor="Green"></asp:Label>
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
    </asp:Panel>
    &nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True"
        Font-Names="Monotype Corsiva" Font-Size="Large" OnClick="LinkButton1_Click" Style="z-index: 107;
        left: 868px; position: absolute; top: 7px">Sign out</asp:LinkButton>
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Image ID="groom1" runat="server" Height="744px" ImageUrl="~/images/BRIDE.jpg"
        Style="z-index: 105; left: 156px; position: absolute; top: 3px" Width="309px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstring %>"
        SelectCommand="SELECT [Item_id], [Item_brand], [Item_image], [Quantity], [Item_sprice], [Product_name] FROM [Item] WHERE ([Product_id] = @Product_id)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="p001" Name="Product_id" SessionField="proid"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 106;
        left: 847px; position: absolute; top: 698px" Text="Continue.." />
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

