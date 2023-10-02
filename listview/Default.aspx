<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:DataList ID="DataList1" runat="server" 
        onitemcommand="DataList1_ItemCommand">
        <EditItemTemplate>
            <table style="width:100%;" border="1">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("city") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("pin") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="update">update</asp:LinkButton>
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="cancel">cancel</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <HeaderTemplate>
            <table border="1" style="width:100%;">
                <tr bgcolor="#3399FF">
                    <td>
                        Id</td>
                    <td>
                        Name</td>
                    <td>
                        City</td>
                    <td>
                        Pin</td>
                    <td>
                        Operation</td>
                </tr>
            </table>
        </HeaderTemplate>
        <FooterTemplate>
            <table border="3" style="width:100%;">
                <tr bgcolor="#99FF66">
                    <td>
                        Id</td>
                    <td>
                        Name</td>
                    <td>
                        City</td>
                    <td>
                        Pin</td>
                    <td>
                        Operation</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton5" runat="server" CommandName="insert">insert</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </FooterTemplate>
        <ItemTemplate>
            <table border="1" style="width:100%;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("pin") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="edit">edit</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="delete">delete</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
</body>
</html>
