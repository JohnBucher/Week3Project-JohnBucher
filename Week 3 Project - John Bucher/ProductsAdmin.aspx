﻿<%@ Page Title="ProductsAdmin" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" Inherits="Project2_v._2._0.CustomersAdmin" %>

<script runat="server">
    protected void PADetails_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        PAGrid.DataBind();
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <br />

    <asp:GridView ID="PAGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." AllowSorting="True" HorizontalAlign="Center" BorderStyle="Solid" BorderWidth="1px" AllowPaging="True" PageSize="50" CellPadding="5">
    <Columns>
        <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="ProductAdminDetails.aspx?ProductID={0}" DataTextField="ProductID" HeaderText="ProductID" />

        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
        <asp:CheckBoxField DataField="IsPublished" HeaderText="IsPublished" SortExpression="IsPublished" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:c2}" />
    </Columns>
    </asp:GridView>

    <br />

    <asp:DetailsView ID="PADetails" runat="server" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="125px" HorizontalAlign="Center" AutoGenerateRows="False" DataKeyNames="ProductID" AllowPaging="True" CellPadding="5" OnItemInserted="PADetails_ItemInserted">
        <Fields>
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CheckBoxField DataField="IsPublished" HeaderText="IsPublished" SortExpression="IsPublished" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:c2}"/>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <br />

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBConnectionString1 %>" SelectCommand="spGetProducts" SelectCommandType="StoredProcedure" InsertCommand="spAddProduct" InsertCommandType="StoredProcedure">
    <SelectParameters>
        <asp:Parameter Name="PublishedOnly" Type="Boolean" DefaultValue="False" />
    </SelectParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="IsPublished" Type="Boolean" />
        <asp:Parameter Name="Price" Type="Decimal" />
    </InsertParameters>
</asp:SqlDataSource>
</asp:Content>
