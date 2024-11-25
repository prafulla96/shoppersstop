<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppersStop.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .heading-row {
            background-color: green;
            text-align: center;
            height: 30px;
            width: 100%;
        }

        .space-row {
            height: 20px;
            width: 65%;
            padding-left: 35%;
        }

        .input-row {
            height: 30px;
            width: 65%;
            padding-left: 35%;
        }

        .text-row {
            color: green;
            font-size: medium;
            height: 20px;
            width: 65%;
            padding-left: 35%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="heading-row">
            <span style="color: white; font-size: x-large">User Login</span>
        </div>
        <div class="space-row">
            <asp:Label ID="LoginErrorLabel" runat="server" ForeColor="Red" Visible="False">Invalid username/password </asp:Label>
        </div>
        <div class="text-row">
            <strong>Email Id</strong>
        </div>
        <div class="input-row">
            <asp:TextBox ID="EmailIdTextBox" runat="server" CssClass="textbox"></asp:TextBox>
        </div>
        <div class="space-row">
            <asp:RequiredFieldValidator ID="EmailIdRequiredFieldValidator" runat="server" ErrorMessage="Email Id is required" ControlToValidate="EmailIdTextBox" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <div class="text-row">
            <strong>Password</strong>
        </div>
        <div class="input-row">
            <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
        </div>
        <div class="space-row">
            <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Password is required" ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <div class="input-row">
            <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="button" Font-Size="Medium" OnClick="LoginButton_Click" />
        </div>
        <div style="width: 100%; height: 15px"></div>
        <div class="text-row">
            <strong>
                <span style="color: green; font-size: medium">New user? <a class="text-center" href="CreateAccount.aspx">Create Your Account</a>
                </span>
            </strong>
        </div>
        <div class="space-row"></div>
    </div>
</asp:Content>
