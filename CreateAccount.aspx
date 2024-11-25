<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="ShoppersStop.CreateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .heading-row {
            background-color: green;
            text-align: center;
            height: 30px;
            width: 100%;
        }

        .space-row {
            height: 15px;
            width: 65%;
            padding-left: 35%;
            vertical-align: middle;
        }

        .input-row {
            padding-left: 35%;
            height: 30px;
            width: 65%;
            vertical-align: middle;
        }

        .text-row {
            color: green;
            font-size: medium;
            height: 20px;
            width: 65%;
            vertical-align: middle;
            padding-left: 35%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="heading-row">
            <span style="color: white; font-size: x-large">Create Your Account</span>
        </div>
        <div class="space-row"></div>
        <div class="text-row">
            <strong>Name</strong>
        </div>
        <div class="input-row">
            <asp:TextBox ID="NameTextBox" runat="server" CssClass="textbox"></asp:TextBox>
        </div>
        <div class="space-row">
            <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Name is required" ControlToValidate="NameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="text-row">
            <strong>Gender</strong>
        </div>
        <div class="input-row">
            <asp:RadioButtonList ID="GenderRadioButtonList" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="space-row">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Gender is required" ControlToValidate="GenderRadioButtonList" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="text-row">
            <strong>Email Id</strong>
        </div>
        <div class="input-row">
            <asp:TextBox ID="EmailIdTextBox" runat="server" CssClass="textbox" OnTextChanged="EmailIdTextBox_TextChanged"></asp:TextBox>
        </div>
        <div class="space-row">
            <asp:Label ID="EmailIdMessageLabel" runat="server"></asp:Label>
            <asp:RequiredFieldValidator ID="EmailIdRequiredFieldValidator" runat="server" ErrorMessage="Email Id is required" ControlToValidate="EmailIdTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div class="text-row">
            <strong>Password</strong>
        </div>
        <div class="input-row">
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
        </div>
        <div class="space-row">
            <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Password is required" ControlToValidate="PasswordTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div class="text-row">
            <strong>Mobile No</strong>
        </div>
        <div class="input-row">
            <asp:TextBox ID="MobileNoTextBox" runat="server" CssClass="textbox"></asp:TextBox>
        </div>
        <div class="space-row">
            <asp:RequiredFieldValidator ID="MobileNoRequiredFieldValidator" runat="server" ErrorMessage="Mobile no is required" ControlToValidate="MobileNoTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="text-row">
            <strong>Address</strong>
        </div>
        <div style="width: 65%; height: 50px; padding-left: 35%">
            <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="3" runat="server" BorderColor="Green" Width="395px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
        </div>
        <div class="space-row">
            <asp:RequiredFieldValidator ID="AddessRequiredFieldValidator" runat="server" ErrorMessage="Address is required" ControlToValidate="AddressTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="text-row">
            <strong>Pincode</strong>
        </div>
        <div class="input-row">
            <asp:TextBox ID="PincodeTextBox" runat="server" CssClass="textbox"></asp:TextBox>
        </div>
        <div class="space-row">
            <asp:RequiredFieldValidator ID="PincodeRequiredFieldValidator" runat="server" ErrorMessage="Pincode is required" ControlToValidate="PincodeTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="input-row">
            <asp:Button ID="RegisterButton" runat="server" Text="Register Yourself" CssClass="button" Font-Size="Medium" OnClick="RegisterButton_Click" />
        </div>
        <div style="width: 100%; height: 10px"></div>
        <div class="text-row">
            <strong>
                <span style="color: green; font-size: medium">Already having an account? <a class="text-center" href="Login.aspx">Login</a>
                </span>
            </strong>
        </div>
        <div class="space-row"></div>
    </div>
</asp:Content>
