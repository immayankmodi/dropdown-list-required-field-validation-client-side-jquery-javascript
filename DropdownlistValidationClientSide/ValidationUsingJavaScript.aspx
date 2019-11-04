<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationUsingJavaScript.aspx.cs"
    Inherits="DropdownlistValidationClientSide.ValidationUsingJavaScript" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>AspnetO.com | DropDownList Validation using JavaScript</title>

    <script type="text/javascript">
        function ValidateDropDownList() {
            var isSelected = false;
            var ddlImageFormatVal = document.getElementById("<%=ddlImageFormat.ClientID%>").value;
            if (ddlImageFormatVal > 0) {
                //Selected option from dropdownlist
                isSelected = true;
            } else {
                //Not selected so alert user to select any option
                alert("Please select image format from the list.");
            }
            return isSelected;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Select Image Format
                    </td>
                    <td>:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlImageFormat" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0" Text="Please select" />
                            <asp:ListItem Value="1" Text=".jpg" />
                            <asp:ListItem Value="2" Text=".png" />
                            <asp:ListItem Value="3" Text=".gif" />
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" OnClientClick="return ValidateDropDownList();"
                            Text="Save" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
