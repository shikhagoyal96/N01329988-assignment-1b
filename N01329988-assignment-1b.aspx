<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="N01329988-assignment-1b.aspx.cs" Inherits="N01329988_assignment_1b.N01329988_assignment_1b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>skydiving-incident-report</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <h1>Skydiving Incident Report</h1>
        </section>

        <section>
            <label>Gender</label>
            <asp:RadioButtonList runat="server" ID="skydiver_gender">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="skydiver_gender" ErrorMessage="Gender of the skydiver is not given."></asp:RequiredFieldValidator>
        </section>

        <section>
            <label>Incident-Time</label>
            <asp:RadioButtonList runat="server" ID="incident_time">
                <asp:ListItem Text="Morning" Value="Morning-time"></asp:ListItem>
                <asp:ListItem Text="Noon" Value="Noon-time"></asp:ListItem>
                <asp:ListItem Text="Night" Value="Night-time"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="incident_time" ErrorMessage="the time during which the incident took place is not selected."></asp:RequiredFieldValidator>
        </section>

        <section>
            <label>Province</label>
            <asp:DropDownList runat="server" ID="incident_province">
                <asp:ListItem Text="Ontario" Value="ON"></asp:ListItem>
                <asp:ListItem Text="Quebec" Value="QE"></asp:ListItem>
                <asp:ListItem Text="British Columbia" Value="BC"></asp:ListItem>
                <asp:ListItem Text="Alberta" Value="AL"></asp:ListItem>
                <asp:ListItem Text="Manitoba" Value="MN"></asp:ListItem>
                <asp:ListItem Text="Nova Scotia" Value="NS"></asp:ListItem>
                <asp:ListItem Text="Yukon" Value="YK"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Province where the incident took place is not selected." ControlToValidate="incident_province"></asp:RequiredFieldValidator>
        </section>

        <section>
            <label>Incident-Location-Type</label>
            <asp:CheckBoxList runat="server" ID="incident_location">
                <asp:ListItem Text="Commercial Area" Value="Commercial Area"></asp:ListItem>
                <asp:ListItem Text="Residential Area" Value="Residential Area"></asp:ListItem>
                <asp:ListItem Text="Remote Area" Value="Remote Area"></asp:ListItem>
            </asp:CheckBoxList>
            <%--the assignment did not ask to apply validation for checkbox.--%>
        </section>

        <section>
            <label>Total-number-of-victim(s)</label>
            <asp:TextBox ID="number_of_victim" runat="server"></asp:TextBox>      
            <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="number_of_victim" ErrorMessage="Total number of people injured is not given." MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
            <%--for the practical implementation of the RangeValidaton the minimum and maximum value has been taken roughly.--%>
        </section>

        <section>
            <label>Victim's-contact-number</label>
            <asp:TextBox runat="server" ID="victim_contact_number"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="victim_contact_number" ErrorMessage="Correct Contact number is not entered." ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}"></asp:RegularExpressionValidator>
            <%--took reference from class teaching--%>
        </section>

        <section>
            <label>Was the first aid given?</label>
            <asp:RadioButtonList runat="server" ID="post_incident_result">
                <asp:ListItem Text="YES" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="NO" Value="No"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="post_incident_result" ErrorMessage="Post incident result is not entered."></asp:RequiredFieldValidator>
        </section>

        <section>
             <asp:ValidationSummary runat="server" ShowSummary="true" />
        </section>  

        <section id="confirmationarea" runat="server">

        </section>

        <section>
            <asp:Button Text="Enter" runat="server" />
        </section>
    </form>
</body>
</html>
