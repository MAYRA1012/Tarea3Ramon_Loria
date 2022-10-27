<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea_Ramon.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlCliente" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        
        
        <Columns>

           

           
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
            <asp:BoundField DataField="Provincia" HeaderText="Provincia" SortExpression="Provincia" />
            <asp:BoundField DataField="Canton" HeaderText="Canton" SortExpression="Canton" />
            <asp:BoundField DataField="Distrito" HeaderText="Distrito" SortExpression="Distrito" />
            <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
            <asp:CheckBoxField DataField="Seguro" HeaderText="Seguro" SortExpression="Seguro" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlCliente" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" InsertCommand="insert into Paciente  (Nombre,Edad,Sexo,Provincia,Canton,Distrito,telefono,Seguro)values(@nombre,@edad,@sexo,@provincia,@canton,@distrito,@telefono,@seguro)" SelectCommand="select * from [Paciente] " UpdateCommand=" update Paciente set Nombre=@nombre,seguro=@seguro where Id=@codigo" DeleteCommand="Delete Paciente where Id=@codigo">
        <DeleteParameters>
            <asp:ControlParameter ControlID="ID" Name="codigo" PropertyName="Text" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="Nombre" Name="nombre" PropertyName="Text" />
            <asp:ControlParameter ControlID="Edad" Name="edad" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownList2" Name="sexo" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="Provincia" Name="provincia" PropertyName="Text" />
            <asp:ControlParameter ControlID="Canton" Name="canton" PropertyName="Text" />
            <asp:ControlParameter ControlID="Distrito" Name="distrito" PropertyName="Text" />
            <asp:ControlParameter ControlID="Telefono" Name="telefono" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownList1" Name="seguro" PropertyName="SelectedValue" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="Nombre" Name="nombre" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownList1" Name="seguro" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ID" Name="codigo" PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<br />
    <asp:Label ID="LabPor" runat="server" Text="Label"></asp:Label>
<br />
<br />
    ID&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ID" runat="server" Height="16px" Width="120px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" class=".label" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Edad"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Edad" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Provincia"></asp:Label>
&nbsp;<asp:TextBox ID="Provincia" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Canton"></asp:Label>
&nbsp;<asp:TextBox ID="Canton" runat="server"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="Distrito"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="Distrito" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Telefono"></asp:Label>
&nbsp;<asp:TextBox ID="Telefono" runat="server"></asp:TextBox>
    <br />
Estado del seguro&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem Value="0">Sin Seguro</asp:ListItem>
    <asp:ListItem Value="1">Seguro</asp:ListItem>
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sexo&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList2" runat="server">
    <asp:ListItem>Masculino</asp:ListItem>
    <asp:ListItem>Femenino</asp:ListItem>
</asp:DropDownList>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Button ID="bagregar" class= "button" runat="server" Text="Agregar" OnClick="bagregar_Click" Width="135px" />
&nbsp;
    <asp:Button ID="beliminar" class= "button" runat="server" Text="Eliminar" OnClick="beliminar_Click" Width="129px" />
&nbsp;<asp:Button ID="bmodificar" class= "button" runat="server" Text="Modificar" OnClick="bmodificar_Click" Width="140px" />
&nbsp;<asp:Button ID="bconsultar" class= "button" runat="server" Text="Consultar" OnClick="bconsultar_Click" Width="147px" />


     


    <br />


     


<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mayor a 30" style="margin-top: 0px" Width="75px" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menor a 13" />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Entre 13 y 29" />


     


</asp:Content>
