<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
   
    <br />
    <br />
    &nbsp;
   
    <asp:Panel ID="Panel1" runat="server" Height="25px" Style="z-index: 100; left: 20px;
        position: absolute; top: 2px" Width="675px" BorderColor="#C00000" BorderStyle="Double">
         <table style="z-index: 100; left: 13px; position: absolute; top: 0px; width: 669px;">
        <tr>
            <td style="width: 71px; height: 21px">
                <asp:Label ID="Label8" runat="server" Style="z-index: 100; left: 27px; position: absolute;
                    top: 2px" Text="Product"></asp:Label>
            </td>
            <td style="width: 125px; height: 21px">
                <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 100; left: 149px;
                    position: absolute; top: 0px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Width="118px">
                </asp:DropDownList>
            </td>
            <td style="width: 48px; height: 21px">
                <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 310px; position: absolute;
                    top: 3px" Text="Brand "></asp:Label>
            </td>
            <td style="width: 100px; height: 21px">
                <asp:DropDownList ID="DropDownList2" Width="120px" runat="server" Style="z-index: 100; left: 383px;
                    position: absolute; top: 1px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td style="width: 100px; height: 21px">
                <asp:Button ID="Button4" runat="server" Style="z-index: 100; left: 567px; position: absolute;
                    top: 1px" Text="Search" OnClick="Button4_Click" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    &nbsp;<br />
    <br />
    <br />
    <br />
    &nbsp;
    <asp:Panel ID="Panel4" runat="server" Height="340px" Style="z-index: 101; left: 13px;
        position: absolute; top: 40px; background-color: #ffff66;" Width="451px"> <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="400" height="300" id="tech" align="middle" style="z-index: 100; left: 9px; position: absolute; top: 7px">
		<param name="allowScriptAccess" value="sameDomain" />
		<param name="movie" value="new folder (2).swf" />
		<param name="quality" value="high" />
		<embed src="new folder (2).swf" quality="high" width="768" height="576" name="tech" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
	</object>
        &nbsp;&nbsp;
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Adminpanel" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="168px" Style="z-index: 102; left: 467px; position: absolute; top: 48px"
        Width="227px">
        <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 9px; position: absolute;
            top: 8px" Text="Admin"></asp:Label>
        <asp:TextBox ID="txtadmin" runat="server" Style="z-index: 101;
            left: 85px; position: absolute; top: 8px" Width="127px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Style="z-index: 102; left: 7px; position: absolute;
            top: 39px" Text="Password"></asp:Label>
        <asp:TextBox ID="adminpass" runat="server" Style="z-index: 103; left: 85px; position: absolute;
            top: 39px" Width="127px" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Style="z-index: 104; left: 91px; position: absolute;
            top: 68px" Text="GO!" Width="36px" OnClick="Button2_Click" />
        <asp:LinkButton ID="ForAdmin" runat="server" OnClick="ForAdmin_Click" Style="z-index: 105;
            left: 61px; position: absolute; top: 98px">Forget Password</asp:LinkButton>
        <asp:Label ID="Label11" runat="server" Style="z-index: 106; left: 22px; position: absolute;
            top: 133px" Text="New Admin?"></asp:Label>
        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click1" Style="z-index: 108;
            left: 135px; position: absolute; top: 131px">Click here</asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Companypanel" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="168px" Style="z-index: 103; left: 468px; position: absolute; top: 46px"
        Width="226px">
        <asp:Label ID="Label6" runat="server" Style="z-index: 100; left: 5px; position: absolute;
            top: 8px" Text="Company Name" Width="88px"></asp:Label>
        <asp:TextBox ID="txtcomp" runat="server" Style="z-index: 101;
            left: 88px; position: absolute; top: 10px" Width="124px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Style="z-index: 102; left: 7px; position: absolute;
            top: 57px" Text="Password"></asp:Label>
        <asp:TextBox ID="txtcompass" runat="server" Style="z-index: 103; left: 90px; position: absolute;
            top: 56px" Width="120px" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Style="z-index: 104; left: 96px; position: absolute;
            top: 84px" Text="GO!" Width="36px" OnClick="Button3_Click" />
        <asp:LinkButton ID="forcomp" runat="server" OnClick="forcomp_Click" Style="z-index: 105;
            left: 57px; position: absolute; top: 113px">Forget Password</asp:LinkButton>
        <asp:Label ID="Label10" runat="server" Style="z-index: 106; left: 20px; position: absolute;
            top: 139px" Text="New Company?"></asp:Label>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click1" Style="z-index: 108;
            left: 139px; position: absolute; top: 138px">Click here</asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="143px" Style="z-index: 104; left: 469px; position: absolute; top: 230px"
        Width="227px">
        <asp:Label ID="Label17" runat="server" Style="z-index: 100; left: 8px; position: absolute;
            top: 9px" Text="Admin please enter your Username here..." Width="214px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 101; left: 45px; position: absolute;
            top: 51px"></asp:TextBox>
        <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click" Style="z-index: 102;
            left: 19px; position: absolute; top: 84px">Get Password</asp:LinkButton>
        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
            ForeColor="#C00000" Style="z-index: 103; left: 147px; position: absolute; top: 85px"
            Text="------------"></asp:Label>
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Style="z-index: 105;
            left: 92px; position: absolute; top: 117px" Text="Thanks" />
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="144px" Style="z-index: 105; left: 467px; position: absolute; top: 228px"
        Width="230px">
        <asp:Label ID="Label15" runat="server" Style="z-index: 100; left: 7px; position: absolute;
            top: 9px" Text="Please enter your Companyname here..." Width="214px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 101; left: 43px; position: absolute;
            top: 57px"></asp:TextBox>
        <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click" Style="z-index: 102;
            left: 10px; position: absolute; top: 90px">Get Password</asp:LinkButton>
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
            ForeColor="#C00000" Style="z-index: 103; left: 139px; position: absolute; top: 89px"
            Text="------------"></asp:Label>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Style="z-index: 105;
            left: 87px; position: absolute; top: 117px" Text="Thanks" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="363px" Style="z-index: 106; left: 756px;
        position: absolute; top: 220px" Width="183px">
        <asp:AdRotator ID="AdRotator1" runat="server" Height="232px" Width="180px" AdvertisementFile="~/ad1.xml" Style="z-index: 100;
            left: 0px; position: absolute; top: 4px" />
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva"
            Font-Size="Large" ForeColor="Green" Style="z-index: 101; left: 13px; position: absolute;
            top: 241px" Text="Find a best Life Partner for you here!..."></asp:Label>
        <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Italic="True"
            Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="#C00000" PostBackUrl="http://www.Shaadi.com"
            Style="z-index: 102; left: 36px; position: absolute; top: 284px">Shaadi.Com</asp:LinkButton>
        &nbsp;<br />
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
        <asp:ImageButton ID="ImageButton1" runat="server" Height="129px" Style="z-index: 106;
            left: 4px; position: absolute; top: 315px" Width="173px" />
        <br />
        <br />
        <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/ad3.xml" Height="104px"
            Style="z-index: 104; left: 4px; position: absolute; top: 448px" Width="175px" />
        <asp:AdRotator ID="AdRotator4" runat="server" AdvertisementFile="~/ad4.xml" Height="70px"
            Style="z-index: 105; left: 4px; position: absolute; top: 554px" Width="174px" />
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
    &nbsp; &nbsp;
    <asp:Panel ID="userpanel" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="167px" Style="z-index: 107; left: 469px; position: absolute; top: 49px"
        Width="226px">
        &nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 7px; position: absolute;
            top: 50px" Text="Password"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 6px; position: absolute;
            top: 14px" Text="User Name"></asp:Label>
        <asp:Button ID="Button1" runat="server" Style="z-index: 102; left: 97px; position: absolute;
            top: 78px" Text="Go!" OnClick="Button1_Click" />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="True" ForeColor="#0000C0"
            OnClick="LinkButton1_Click" Style="z-index: 103; left: 143px; position: absolute;
            top: 136px">Click here</asp:LinkButton>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 33px; position: absolute;
            top: 139px" Text="New User?"></asp:Label>
        <asp:LinkButton ID="forgetpass" runat="server" Style="z-index: 105; left: 63px;
            position: absolute; top: 105px" OnClick="forgetpass_Click">Forget Password</asp:LinkButton>
        <asp:TextBox ID="username" runat="server" Style="z-index: 108; left: 82px; position: absolute;
            top: 13px" Width="131px"></asp:TextBox>
        <asp:TextBox ID="userpass" runat="server" Style="z-index: 107; left: 83px; position: absolute;
            top: 46px" Width="129px" TextMode="Password"></asp:TextBox>
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel3" runat="server" BorderColor="#C00000" BorderStyle="Double"
        Height="141px" Style="z-index: 108; left: 471px; position: absolute; top: 230px"
        Width="226px">
        <asp:Label ID="Label13" runat="server" Style="z-index: 100; left: 6px; position: absolute;
            top: 13px" Text="Please enter your username here..." Width="214px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 101; left: 42px; position: absolute;
            top: 43px"></asp:TextBox>
        <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click" Style="z-index: 102;
            left: 12px; position: absolute; top: 79px">Get Password</asp:LinkButton>
        <asp:Label ID="Label14" runat="server" BorderColor="#C00000" Style="z-index: 103;
            left: 140px; position: absolute; top: 79px" Text="-----------" Width="72px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#C00000"></asp:Label>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Style="z-index: 105;
            left: 83px; position: absolute; top: 109px" Text="Thanks" Width="64px" />
    </asp:Panel>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton3" runat="server" Style="z-index: 109; left: 544px;
        position: absolute; top: 290px" OnClick="LinkButton3_Click">Admin  Login</asp:LinkButton>
    <asp:LinkButton ID="LinkButton4" runat="server" Style="z-index: 110; left: 546px;
        position: absolute; top: 322px" OnClick="LinkButton4_Click">Company Login</asp:LinkButton>
    <asp:LinkButton ID="LinkButton5" runat="server" Height="14px" OnClick="LinkButton5_Click"
        Style="z-index: 111; left: 547px; position: absolute; top: 254px" Width="68px">User Login</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel7" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva"
        Font-Size="XX-Large" ForeColor="#C00000" Height="425px" Style="z-index: 113;
        left: 14px; position: absolute; top: 389px" Width="707px">
        <asp:Label ID="Label19" runat="server" Font-Size="72pt" Height="18px" Style="z-index: 100;
            left: 0px; position: absolute; top: -1px" Text="V"></asp:Label>
        <asp:Label ID="Label20" runat="server" Font-Size="48pt" Style="z-index: 101; left: 61px;
            position: absolute; top: 24px" Text="ivah....."></asp:Label>
        <table style="z-index: 103; left: 6px; width: 693px; position: absolute; top: 112px;
            height: 313px">
            <tr>
                <td style="width:790px; text-align: justify">
                    <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; Save time and money when making
                        wedding arrangements with Shaadionline' s well-researched vendor list. Over 20 categories
                        covering premium and exclusive vendors figure in this city-wise list that cover
                        almost every conceivable wedding need.<br />
                        &nbsp; &nbsp;&nbsp; Based on extensive field research and</span><span class="a2"><span
                            style="font-size: 16pt">interaction with each and every vendor by the Shaadionline
                            team, the information provided has detailed answers to all your queries, allowing
                            you to evaluate a vendor's services in detail. Recommondations and rating by Shaadionline
                            help you narrow down your choices.&nbsp;</span><br />
                            <span class="a2" style="font-size: 16pt">&nbsp; &nbsp; So, whether you are looking for
                                a banquet hall or a florist, a caterer or a band, a mithaiwala or a dress designer,
                                a beauticion, or a jeweller, card printers or videographers, tentwala or transporters,
                                you will find all the relevant information right here</span></span></td>
            </tr>
        </table>
        <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/images/wedding.bmp"
            Style="z-index: 104; left: 518px; position: absolute; top: 1px" Width="172px" />
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
</asp:Content>

