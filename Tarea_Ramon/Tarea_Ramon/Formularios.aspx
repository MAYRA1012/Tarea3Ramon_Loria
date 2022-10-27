<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Formularios.aspx.cs" Inherits="Tarea_Ramon.Formularios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="449px" Width="350px">
    <asp:Panel ID="Panel2" runat="server" Height="209px" Width="376px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Sql23">
            <Columns>
                <asp:BoundField DataField="Column1" HeaderText="Column1" ReadOnly="True" SortExpression="Column1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Sql23" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConeccion %>" SelectCommand="Suma" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="edad" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="% Menores 13" />
    &nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" Text="% Entre 13 y 30" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="% Mayor 30" />
</asp:Panel>



</asp:Content>
