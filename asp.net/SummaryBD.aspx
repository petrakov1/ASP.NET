<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" MasterPageFile="~/Site.master" Inherits="asp.net.SummaryBD" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">
	<h2>Список участников</h2>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None">
	<AlternatingRowStyle BackColor="White" />
	<Columns>
		<asp:BoundField DataField="Name" HeaderText="Имя" ReadOnly="True" SortExpression="Name" />
		<asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
		<asp:BoundField DataField="Phone" HeaderText="Телефон" ReadOnly="True" SortExpression="Phone" />
		<asp:BoundField DataField="Rdata" DataFormatString="{0:d}" HeaderText="Дата" ReadOnly="True" SortExpression="Rdata" />
	</Columns>
	<EditRowStyle BackColor="#2461BF" />
	<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
	<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
	<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
	<RowStyle BackColor="#EFF3FB" />
	<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
	<SortedAscendingCellStyle BackColor="#F5F7FB" />
	<SortedAscendingHeaderStyle BackColor="#6D95E1" />
	<SortedDescendingCellStyle BackColor="#E9EBEF" />
	<SortedDescendingHeaderStyle BackColor="#4870BE" />
	</asp:GridView>

<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="asp.net.SampleContext" EntityTypeName="" Select="new (Name, Email, Phone, WillAttend, Rdata, Reports)" TableName="GuestResponses"></asp:LinqDataSource>
</asp:Content>