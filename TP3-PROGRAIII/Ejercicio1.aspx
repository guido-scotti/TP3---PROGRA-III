<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_PROGRAIII.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="width: 993px; margin-left: 6px; height: 174px;">
    <form id="form7" runat="server">
        <div style="margin-left: 0px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblEJ1" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Blue" Text="- EJERCICIO 1 -"></asp:Label>
            <br />
        </div>
        <div>
            <br />
        </div>
        <asp:Label ID="lblLocalidad" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Ingrese una localidad: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLocalidad" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Width="205px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLocalidad" runat="server" BackColor="#999999" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="#333333" Text="Guardar localidad" Width="150px" OnClick="btnLocalidad_Click" ValidationGroup="LocalidadValidation" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Red" ValidationGroup="LocalidadValidation">¡Ingrese una localidad!</asp:RequiredFieldValidator>
        <p style="margin-left: 200px">
            <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
        </p>
        <div style="width: 1085px; height: 37px; margin-left: 71px">
            <asp:Label ID="lblUsuariosTitulo" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Blue" Text="- USUARIOS - "></asp:Label>
            <br />
            <br />
        </div>
        <br />
        <asp:Label ID="lblNombreUsuario" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Nombre de usuario: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUsuario" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtUsuario" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Red">¡Ingrese un nombre!</asp:RequiredFieldValidator>
        <br />
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblContraseña" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Contraseña: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtContraseña" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" TextMode="Password" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Red">¡Ingrese una contraseña!</asp:RequiredFieldValidator>
        </p>
        <br />
        <br />
        <asp:Label ID="lblRepetirContra" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Repita la contraseña: "></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtRepeContraseña" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" TextMode="Password" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfvContraseñaRepe" runat="server" ControlToValidate="txtRepeContraseña" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Red">¡Repita la contraseña!</asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <p>
            <asp:Label ID="lblCorreo" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Correo electrónico: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCorreo" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Red">¡Ingrese un correo!</asp:RequiredFieldValidator>
        </p>
        <br />
        <br />
        <asp:Label ID="lblCP" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="CP: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCP" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Red">¡Ingrese un codigo postal!</asp:RequiredFieldValidator>
        <br />
        <br />
        <p>
            <asp:Label ID="lblElegirLocalidades" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Localidades: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlElegirLocalidades" runat="server" BackColor="White" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Width="180px">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="rfvLocalidadesDDL" runat="server" ControlToValidate="ddlElegirLocalidades" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Red">¡Ingrese una localidad!</asp:RequiredFieldValidator>
        </p>
        <div style="margin-left: 80px">
            <br />
            <br />
            <asp:Button ID="btnAgregarUsuario" runat="server" BackColor="#999999" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="#333333" OnClick="btnAgregarUsuario_Click" Text="Agregar usuario" Width="140px" />
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p style="width: 809px; margin-left: 77px">
            <asp:Button ID="btnInicioASPX" runat="server" BackColor="Gray" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Blue" Text="Ir a Inicio.aspx" />
        </p>
    </form>
</body>
</html>
