<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ShoppersStop.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin: 5px 5%; width: 90%; border: 1px solid green">
        <div style="background-color: green; height: 30px; padding: 1%; width: 98%; color: white; font-size: x-large">
            Latest Products
        </div>
        <div style="padding: 0.5%; width: 99%">
            <asp:DataList ID="LatestProductsDataList" runat="server" Width="100%" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div style="border: 1px solid green; width: 99.5%; height: 250px">
                        <div style="margin: 2% 5%; text-align: center">
                            <asp:HyperLink ID="ViewProductHyperLink" runat="server"
                                NavigateUrl='<%# "~/ViewProduct.aspx?ProductId=" + Eval("ProductId") %>'
                                ForeColor="Blue">
                                <asp:Image ID="ProductImage" runat="server" Height="150px"
                                    ImageUrl='<%# Eval("ImagePath") %>' />
                            </asp:HyperLink>
                        </div>
                        <div>
                            <asp:Label ID="NameLabel" runat="server" Width="250px" Text='<%#  Eval("Name") %>'></asp:Label>
                        </div>
                        <div style="color: green; font-size: large;">
                            <%# Eval("Price", "{0:C}") %>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
