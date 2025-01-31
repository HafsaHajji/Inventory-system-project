<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users1.aspx.cs" Inherits="zust_cs5_project.users1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            height: 60px;
            text-align: center;
        }
        .auto-style3 {
            color: #FFFFFF;
            background-color: #3333FF;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            color: #009933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4">
                        <h1><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="USER REGISTRATION FORM"></asp:Label>
                            </strong></h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Fullname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtfname" runat="server" Height="27px" Width="338px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtuname" runat="server" Height="27px" Width="338px"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtpasword" runat="server" Height="27px" TextMode="Password" Width="338px"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdate" runat="server" Height="27px" TextMode="Date" Width="338px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnregister" runat="server" OnClick="btnregister_Click" Text="Register" />
                    &nbsp;
                        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                    &nbsp;
                        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtid" runat="server" Height="27px" Width="338px"></asp:TextBox>
                    &nbsp;<asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblinfo" runat="server" CssClass="auto-style5"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GDVUsers" AutoGenerateColumns="false" runat="server">
                            <Columns>
                                <asp:BoundField DataField="userid" HeaderText="USER ID"/>
                                <asp:BoundField DataField="fullname" HeaderText="FULLNAME"/>
                                <asp:BoundField DataField="username" HeaderText="USER NAME"/>
                                <asp:BoundField DataField="regdate" HeaderText="DATE"/>


                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
