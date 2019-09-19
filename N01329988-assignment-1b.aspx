<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="N01329988-assignment-1b.aspx.cs" Inherits="N01329988_assignment_1b.N01329988_assignment_1b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <h1>Skydiving Incident Report</h1>
        </section>

        <section>
            <label>Gender</label>
            <asp:RadioButtonList runat="server" ID="humangender">
                <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="female"></asp:ListItem>
            </asp:RadioButtonList>
        </section>

        <section>
            <label>Accident-Time</label>
            <asp:RadioButtonList runat="server" ID="time">
                <asp:ListItem Text="Morning" Value="morning"></asp:ListItem>
                <asp:ListItem Text="Noon" Value="noon"></asp:ListItem>
                <asp:ListItem Text="night" Value="night"></asp:ListItem>
            </asp:RadioButtonList>
        </section>

        <section>
            <label>Province</label>
            <asp:DropDownList runat="server" ID="province">
                <asp:ListItem Text="Ontario" Value="ontario"></asp:ListItem>
                <asp:ListItem Text="Quebec" Value="quebec"></asp:ListItem>
                <asp:ListItem Text="British Columbia" Value="britishcolumbia"></asp:ListItem>
                <asp:ListItem Text="Alberta" Value="alberta"></asp:ListItem>
                <asp:ListItem Text="Manitoba" Value="manitoba"></asp:ListItem>
                <asp:ListItem Text="Nova Scotia" Value="novascotia"></asp:ListItem>
                <asp:ListItem Text="Yukon" Value="yukon"></asp:ListItem>
            </asp:DropDownList>
        </section>

        <section>
            <label>Accident-Location-Type</label>
            <asp:CheckBoxList runat="server" ID="location">
                <asp:ListItem Text="Commercial Area" Value="cmmercial"></asp:ListItem>
                <asp:ListItem Text="Residential Area" Value="residential"></asp:ListItem>
                <asp:ListItem Text="Remote Area" Value="remote"></asp:ListItem>
            </asp:CheckBoxList>
        </section>

        <section>
            <label>Victim's Profession</label>
            <asp:CheckBoxList ID="profession" runat="server">
                <asp:ListItem Text="Actor" Value="actor"></asp:ListItem>
                <asp:ListItem Text="Self-Employed" Value=""></asp:ListItem>
                <asp:ListItem Text="Pilot" Value=""></asp:ListItem>
                <asp:ListItem Text="Teacher" Value=""></asp:ListItem>
                <asp:ListItem Text="Engineer" Value=""></asp:ListItem>
                <asp:ListItem Text="Doctor" Value=""></asp:ListItem>
            </asp:CheckBoxList>
        </section>

        <section>

        </section>
            <asp:ValidationSummary runat="server" ShowSummary="false" />

        <section>

        </section id="confirmationarea" runat="server">

        <section>
            <asp:Button Text="Enter" runat="server" />
        </section>
    </form>
</body>
</html>
