<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Jan29Assessment_Asp.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 172px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            width: 307px;
        }
        .auto-style8 {
            width: 213px;
            height: 26px;
        }
        .auto-style9 {
            width: 307px;
        }
        .auto-style10 {
            width: 213px;
        }
        .auto-style11 {
            width: 172px;
        }
        .auto-style12 {
            width: 172px;
            height: 54px;
        }
        .auto-style13 {
            width: 213px;
            height: 54px;
        }
        .auto-style14 {
            width: 307px;
            height: 54px;
        }
    </style>
    <link href="CustomerStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13"><h3>Customer Registration</h3></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style11"><h4>Customer Name</h4></td>
                    <td class="auto-style10">
                      <asp:TextBox ID="TxtName" runat="server" OnTextChanged="TxtName_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="*Required" ForeColor="Red">TxtName</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><h4>Customer Mobile</h4></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Required" ForeColor="Red" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}" ControlToValidate="TxtMobile"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><h4>Email</h4></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*Required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><h4> Password</h4></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TxtPassword" runat="server" OnTextChanged="TxtPassword_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass@123" ControlToValidate="TxtPassword" ErrorMessage="Password Do not Match" ForeColor="Red"></asp:CompareValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="BtnReg" runat="server" Text="Reg Customer" OnClick="BtnReg_Click" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="LblInfo" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style6"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
