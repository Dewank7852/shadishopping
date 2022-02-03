<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="custreg.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="166px" Style="z-index: 100; left: 94px; position: absolute; top: 54px"
        Width="440px">
        <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 33px; position: absolute;
            top: 16px" Text="First Name" Font-Bold="False" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
        <asp:RadioButton ID="rdmale" runat="server" Style="z-index: 101; left: 184px; position: absolute;
            top: 113px" Text="Male" GroupName="a" TabIndex="6" Font-Bold="False" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon" />
        <asp:RadioButton ID="rdfemale" runat="server" Style="z-index: 102; left: 270px; position: absolute;
            top: 113px" Text="Female" GroupName="a" BorderStyle="None" TabIndex="7" Font-Bold="False" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon" />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            Style="z-index: 103; left: 343px; position: absolute; top: 8px" ControlToValidate="txtfna" ToolTip="User Name is Required e.g Ramesh">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            Style="z-index: 104; left: 345px; position: absolute; top: 42px" ControlToValidate="txtlna" ToolTip="Sirname is also Require e.g Singh">*</asp:RequiredFieldValidator>
        <asp:DropDownList ID="ddmonth" runat="server" Style="z-index: 105; left: 252px; position: absolute;
            top: 74px" Width="55px" TabIndex="4">
            <asp:ListItem Value="month">Month</asp:ListItem>
            <asp:ListItem Value="january">January</asp:ListItem>
            <asp:ListItem Value="febuary">Febuary</asp:ListItem>
            <asp:ListItem>March</asp:ListItem>
            <asp:ListItem>April</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>June</asp:ListItem>
            <asp:ListItem>July</asp:ListItem>
            <asp:ListItem>August</asp:ListItem>
            <asp:ListItem>September</asp:ListItem>
            <asp:ListItem>October</asp:ListItem>
            <asp:ListItem>November</asp:ListItem>
            <asp:ListItem>December</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtfna"
            Style="z-index: 106; left: 370px; position: absolute; top: 9px" ValidationExpression="[a-zA-z]*">#</asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtlna"
            Style="z-index: 108; left: 372px; position: absolute; top: 42px" ValidationExpression="[a-zA-z]*">#</asp:RegularExpressionValidator>
       
    </asp:Panel>
    <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 133px; position: absolute;
        top: 137px" Text="Date of Birth" Font-Bold="False" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 133px; position: absolute;
        top: 104px" Text="Last Name" Font-Bold="False" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
    &nbsp;
    <asp:Label ID="Label5" runat="server" Style="z-index: 103; left: 135px; position: absolute;
        top: 169px" Text="Gender" Font-Bold="False" Font-Italic="True" Font-Names="Estrangelo Edessa" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
    <asp:TextBox ID="txtfna" runat="server" Style="z-index: 104; left: 282px; position: absolute;
        top: 67px" TabIndex="1"></asp:TextBox>
    <asp:TextBox ID="txtlna" runat="server" Style="z-index: 105; left: 282px; position: absolute;
        top: 98px" TabIndex="2"></asp:TextBox>
    &nbsp;
    <asp:DropDownList ID="dddate" runat="server" Style="z-index: 106; left: 283px; position: absolute;
        top: 130px" TabIndex="3">
        <asp:ListItem>Day</asp:ListItem>
    </asp:DropDownList>
    &nbsp;
    <asp:DropDownList ID="ddyear" runat="server" Style="z-index: 107; left: 416px; position: absolute;
        top: 130px" TabIndex="5">
        <asp:ListItem>Year</asp:ListItem>
    </asp:DropDownList>
    &nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
        Font-Underline="False" ForeColor="Green" Style="left: 13px; position: absolute;
        top: 13px; z-index: 108;" Text="Personal Detail"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="txtcust" runat="server" Style="z-index: 109; left: 539px; position: absolute;
        top: 148px" TabIndex="1" Enabled="False" Visible="False"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
        ForeColor="Green" Style="z-index: 110; left: 10px; position: absolute; top: 245px"
        Text="Contact Information"></asp:Label>
    <asp:Panel ID="Panel2" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="132px" Style="z-index: 111; left: 93px; position: absolute; top: 290px"
        Width="443px">
        <asp:Label ID="Label11" runat="server" Style="z-index: 100; left: 43px; position: absolute;
            top: 199px" Text="Contact" Font-Italic="True" ForeColor="Maroon"></asp:Label> &nbsp;
        <asp:Label ID="Label12" runat="server" Style="z-index: 101; left: 45px; position: absolute;
            top: 235px" Text="Postal/Zip" Font-Italic="True" ForeColor="Maroon"></asp:Label>
        <asp:Label ID="Label13" runat="server" Style="z-index: 102; left: 44px; position: absolute;
            top: 129px" Text="State" Font-Italic="True" ForeColor="Maroon"></asp:Label>
        &nbsp;&nbsp;<br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtemail"
            ErrorMessage="# Please Fill the valid expression " Style="z-index: 103; left: 356px; position: absolute;
            top: 23px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            Width="22px" ToolTip="eg. abc@yahoo.com">#</asp:RegularExpressionValidator>
        &nbsp;<br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Txtmob"
            Style="z-index: 115; left: 385px; position: absolute; top: 203px" ValidationExpression="\d\d\d\d\d\d\d\d\d\d">#</asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="txtstate" runat="server" Style="z-index: 105; left: 193px; position: absolute;
            top: 134px" Width="151px" TabIndex="11"></asp:TextBox>
        <asp:TextBox ID="txtcity" runat="server" Style="z-index: 106; left: 192px; position: absolute;
            top: 164px" TabIndex="12"></asp:TextBox>
        <br />
        <asp:TextBox ID="Txtemail" runat="server" Style="z-index: 107; left: 193px; position: absolute;
            top: 20px" TabIndex="8"></asp:TextBox>
        <asp:TextBox ID="Txtadd" runat="server" Height="18px" Style="z-index: 108; left: 193px;
            position: absolute; top: 55px" TextMode="MultiLine" Width="149px" TabIndex="9"></asp:TextBox>
        <asp:TextBox ID="txtzip" runat="server" Style="z-index: 109; left: 194px; position: absolute;
            top: 231px" TabIndex="14"></asp:TextBox>
        &nbsp; &nbsp;
        <asp:DropDownList ID="ddcoun" runat="server" Style="z-index: 110; left: 193px; position: absolute;
            top: 93px" Width="155px" TabIndex="10">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>India</asp:ListItem>
            <asp:ListItem>Japan</asp:ListItem>
            <asp:ListItem>USA</asp:ListItem>
            <asp:ListItem>China</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtstate"
            SetFocusOnError="True" Style="z-index: 111; left: 354px; position: absolute;
            top: 138px">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="Txtmob" runat="server" Style="z-index: 112; left: 193px; position: absolute;
            top: 199px" TabIndex="13"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcity"
            Style="z-index: 113; left: 356px; position: absolute; top: 166px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txtmob"
            ErrorMessage="* Please fill the marked field" Style="z-index: 114; left: 356px;
            position: absolute; top: 203px">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:Label ID="Label7" runat="server" Style="z-index: 112; left: 137px; position: absolute;
        top: 314px" Text="Email" Width="31px" Font-Italic="True" ForeColor="Maroon"></asp:Label>
    <asp:Label ID="Label8" runat="server" Style="z-index: 113; left: 138px; position: absolute;
        top: 348px" Text="Address" Width="31px" Font-Italic="True" ForeColor="Maroon"></asp:Label>
    <asp:Label ID="Label9" runat="server" Style="z-index: 114; left: 139px; position: absolute;
        top: 385px" Text="Country" Width="31px" Font-Italic="True" ForeColor="Maroon"></asp:Label>
    <asp:Label ID="Label10" runat="server" Style="z-index: 115; left: 142px; position: absolute;
        top: 457px" Text="City" Width="31px" Font-Italic="True" ForeColor="Maroon"></asp:Label>
    &nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="217px" Style="z-index: 122;
        left: 608px; position: absolute; top: 302px" Width="285px" />
    <br />
    <br />
    <br />
    
    <br />
    <br />
    &nbsp;<br />
    &nbsp;&nbsp;
    <asp:Panel ID="Panel3" runat="server" BorderColor="#C00000" BorderStyle="Double" Height="150px"
        Style="z-index: 117; left: 95px; position: absolute; top: 643px" Width="440px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuname"
            Style="z-index: 100; left: 350px; position: absolute; top: 20px" ToolTip="e.g. abc">*</asp:RequiredFieldValidator>
        &nbsp;
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Style="z-index: 101; left: 39px; position: absolute;
            top: 23px" Text="User Name" Font-Italic="True" ForeColor="Maroon"></asp:Label>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass"
            ControlToValidate="TextBox3" ErrorMessage="(=) Password is not Match" Style="z-index: 102;
            left: 353px; position: absolute; top: 61px">=</asp:CompareValidator>
        &nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Style="z-index: 104; left: 39px; position: absolute;
            top: 61px" Text="Password" Font-Italic="True" ForeColor="Maroon"></asp:Label>
        <asp:Label ID="Label16" runat="server" Style="z-index: 105; left: 40px; position: absolute;
            top: 101px" Text="Retype Password" Font-Italic="True" ForeColor="Maroon"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtuname" runat="server" Style="z-index: 106; left: 190px; position: absolute;
            top: 21px" TabIndex="15"></asp:TextBox>
        <asp:TextBox ID="txtpass" runat="server" Style="z-index: 107; left: 188px; position: absolute;
            top: 61px" TextMode="Password" Width="148px" TabIndex="16"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 108; left: 188px; position: absolute;
            top: 101px" TextMode="Password" Width="147px" TabIndex="17"></asp:TextBox>
        <br />
        <br />
    </asp:Panel>
    <br />
    <br />
    &nbsp; &nbsp;&nbsp;<br />
    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
        ForeColor="Green" Style="z-index: 118; left: 16px; position: absolute; top: 603px"
        Text="Authentication"></asp:Label>
    <br />
    <br />
    <br />
    &nbsp; &nbsp;<br />
    <br />
    <asp:Button ID="Button3" runat="server" BorderColor="Green" BorderStyle="Dashed"
        Style="z-index: 119; left: 359px; position: absolute; top: 808px" Text="Cancel" TabIndex="20" OnClick="Button3_Click1" />
    <asp:Button ID="Button2" runat="server" BorderColor="Green" BorderStyle="Dashed"
        OnClick="Button2_Click" Style="z-index: 120; left: 205px; position: absolute;
        top: 808px" Text="Submit" TabIndex="18" />
    <asp:Button ID="Button4" runat="server" BorderColor="Green" BorderStyle="Dashed"
        OnClick="Button4_Click" Style="z-index: 121; left: 283px; position: absolute;
        top: 808px" Text="Reset" Width="60px" TabIndex="19" />
    &nbsp;
</asp:Content>

