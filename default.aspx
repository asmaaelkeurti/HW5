<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="StyleSheet.css"/>
    <style type="text/css">
        .auto-style2 {
            width: 185px;
        }
        .auto-style6 {
            width: 56px;
        }
        .auto-style8 {
            text-align: right;
            width: 113px;
        }
        .auto-style9 {
            width: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
    
        <h1>Mortgage Calculator</h1>
        
        <br /><br />
        
        <br />
        
            <table style="width:100%;">
                <tr>
                    <td class="auto-style8">*Loan Amount:</td>
                    <td class="auto-style9"> <asp:TextBox ID="tbLoanAmt" runat="server" style="margin-left: 0px" ></asp:TextBox>
                  
                    </td>
                    <td class="auto-style2">
                  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                  
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">*Annual Interest %:</td>
                    <td class="auto-style9"> <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
                    </td>
                    <td class="auto-style2">
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please, i beg u"></asp:RequiredFieldValidator>
        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">*Loan Term (Yrs):</td>
                    <td class="auto-style9"> <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
                    </td>
                    <td class="auto-style2">
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="You must type something here"></asp:RequiredFieldValidator>
        
                    </td>
                </tr>
        </table>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        

        
        <asp:Button ID="btnClear" runat="server" Text="Clear" />
        <%If Not IsPostBack Then%>
        </p>
        <p>&nbsp;</p>
        <p>Welcome. Please complete the fields above and click the calculate button.</p>
        <%Else%>        
        Monthly Payment: &nbsp; <span class="bold"><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
            <AlternatingRowStyle CssClass="alt" />
        </asp:GridView>
        <%End If%>   
        </div>
    </form>
</body>
</html>
