<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_PROGRAIII.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form7" runat="server">

        <!-- Título -->
        <div style="text-align: center;">
            <asp:Label ID="lblEJ1" runat="server" 
                Font-Bold="True" Font-Names="Bahnschrift" 
                Font-Size="X-Large" ForeColor="Blue" 
                Text="- EJERCICIO 1 -"></asp:Label>
            <br /><br />
        </div>

        <!-- Localidad -->
        <div class="container">

            <asp:Label ID="lblLocalidad" runat="server" 
                Font-Bold="True" Font-Names="Bahnschrift" 
                Font-Size="Medium" Text="Ingrese una localidad: ">
            </asp:Label>

            &nbsp;
            <asp:TextBox ID="txtLocalidad" runat="server" 
                Font-Bold="True" Font-Names="Bahnschrift" 
                Font-Size="Medium" Width="205px">
            </asp:TextBox>

            &nbsp;
            <asp:Button ID="btnLocalidad" runat="server" 
                BackColor="#999999" Font-Bold="True" 
                Font-Names="Bahnschrift" Font-Size="Medium" 
                ForeColor="#333333" Width="150px"
                Text="Guardar localidad"
                OnClick="btnLocalidad_Click"
                ValidationGroup="LocalidadValidation" />
        
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server"
                ControlToValidate="txtLocalidad"
                Font-Bold="True" Font-Names="Bahnschrift"
                Font-Size="Medium" ForeColor="Red"
                ValidationGroup="LocalidadValidation">
                ¡Ingrese una localidad!
            </asp:RequiredFieldValidator>

            <div styel="margin-bottom:20px;">
                <asp:Label ID="lblMensaje" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" ForeColor="#CC0000">
                </asp:Label>
            </div>
        </div>
        
        <div>

            <!-- Usuarios -->
            <div>
                <asp:Label ID="lblUsuariosTitulo" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="X-Large" ForeColor="Blue" 
                    Text="- USUARIOS - ">
                </asp:Label>
                <br /><br />
            </div>

            <!-- Nombre de Usuario -->
           <div class="form-row">

                <asp:Label ID="lblNombreUsuario" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" Text="Nombre de usuario: ">
                </asp:Label>
        
                &nbsp;
                <asp:TextBox ID="txtUsuario" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" Width="180px">
                </asp:TextBox>

                &nbsp;
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" 
                    ControlToValidate="txtUsuario" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" ForeColor="Red">
                    ¡Ingrese un nombre!
                </asp:RequiredFieldValidator>
           </div> 

            <!-- Contraseña -->
            <div class="form-row">
                <asp:Label ID="lblContraseña" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" Text="Contraseña: ">
                </asp:Label>
            
                &nbsp;&nbsp;
                <asp:TextBox ID="txtContraseña" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" TextMode="Password" Width="180px">
                </asp:TextBox>

                &nbsp;
                <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" 
                    ControlToValidate="txtContraseña" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" ForeColor="Red">
                    ¡Ingrese una contraseña!
                </asp:RequiredFieldValidator>
            </div> 

            <!-- Repetir Contraseña -->
            <div class="form-row">

                <asp:Label ID="lblRepetirContra" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" Text="Repita la contraseña: ">
                </asp:Label>

                &nbsp;
                <asp:TextBox ID="txtRepeContraseña" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" TextMode="Password" Width="180px">
                </asp:TextBox>

                &nbsp;
                <asp:RequiredFieldValidator ID="rfvContraseñaRepe" runat="server" 
                    ControlToValidate="txtRepeContraseña" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" ForeColor="Red">
                    ¡Repita la contraseña!
                </asp:RequiredFieldValidator>
            </div> 


            <!-- Correo -->
            <div class="form-row">
                <asp:Label ID="lblCorreo" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" Text="Correo electrónico: ">
                </asp:Label>

                &nbsp;
                <asp:TextBox ID="txtCorreo" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" Width="180px">
                </asp:TextBox>

                &nbsp;
                <!-- Campo vacío -->
                <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" 
                    ControlToValidate="txtCorreo" 
                    ErrorMessage="¡Ingrese un correo!"
                    Display="Dynamic"
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" ForeColor="Red">
                </asp:RequiredFieldValidator>

                <!-- Formato inválido -->
                <asp:RegularExpressionValidator ID="revCorreo" runat="server"
                    ControlToValidate="txtCorreo"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                    ErrorMessage="¡Formato de correo no válido!"
                    Display="Dynamic"
                    Font-Bold="True" Font-Names="Bahnschrift"
                    Font-Size="Medium" ForeColor="Red">
                </asp:RegularExpressionValidator>
            </div> 

            <!-- Código Postal -->
            <div class="form-row">

                <asp:Label ID="lblCP" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" Text="CP: ">
                </asp:Label>

                &nbsp;
                <asp:TextBox ID="txtCP" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" Width="180px">
                </asp:TextBox>

        
                <!-- Campo vacío -->
                <asp:RequiredFieldValidator ID="rfvNumeros" runat="server"
                    ControlToValidate="txtCP"
                    ErrorMessage="¡Este campo es obligatorio!"
                    Display="Dynamic"
                    Font-Bold="True" Font-Names="Bahnschrift"
                    Font-Size="Medium" ForeColor="Red">
                </asp:RequiredFieldValidator>

                <!-- Cantidad de caracteres -->
                <asp:RegularExpressionValidator ID="revLongitud" runat="server"
                    ControlToValidate="txtCP"
                    ValidationExpression="^.{4}$"
                    ErrorMessage="¡El codigo postal solo puede tener 4 caracteres!"
                    Display="Dynamic"
                    Font-Bold="True" Font-Names="Bahnschrift"
                    Font-Size="Medium" ForeColor="Red">
                </asp:RegularExpressionValidator>


                <!-- Solo números -->
                <asp:RegularExpressionValidator ID="revNumeros" runat="server"
                    ControlToValidate="txtCP"
                    ValidationExpression="^\d+$"
                    ErrorMessage="¡Solo se permiten números!"
                    Display="Dynamic"
                    Font-Bold="True" Font-Names="Bahnschrift"
                    Font-Size="Medium" ForeColor="Red">
                </asp:RegularExpressionValidator>
            </div> 


            <!-- Dropdown Localidades -->

            <div class="form-row">

                <asp:Label ID="lblElegirLocalidades" runat="server" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" Text="Localidades: ">
                </asp:Label>

                &nbsp;
                <asp:DropDownList ID="ddlElegirLocalidades" runat="server" 
                    BackColor="White" Font-Bold="True" 
                    Font-Names="Bahnschrift" Font-Size="Medium" Width="180px">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>

                &nbsp;
                <asp:RequiredFieldValidator ID="rfvLocalidadesDDL" runat="server" 
                    ControlToValidate="ddlElegirLocalidades" 
                    Font-Bold="True" Font-Names="Bahnschrift" 
                    Font-Size="Medium" ForeColor="Red">
                    ¡Ingrese una localidad!
                </asp:RequiredFieldValidator>
            </div> 

            <!-- Botón Agregar Usuario -->
            <div class="add-user">
                <asp:Button ID="btnAgregarUsuario" runat="server" 
                    BackColor="#999999" Font-Bold="True" 
                    Font-Names="Bahnschrift" Font-Size="Medium" 
                    ForeColor="#333333" Width="140px"
                    OnClick="btnAgregarUsuario_Click"
                    Text="Agregar usuario" />

                <asp:Label ID="ingreso" class="succsess" runat="server"></asp:Label>
                <asp:Label ID="errorTxt" class="error" runat="server"></asp:Label>
            </div>


            <!-- Botón a Inicio -->
            <div>
                <asp:Button ID="btnInicioASPX" runat="server" 
                    BackColor="Gray" Font-Bold="True" 
                    Font-Names="Bahnschrift" Font-Size="Medium" 
                    CausesValidation="false" 
                    ForeColor="Blue" Text="Ir a Inicio.aspx" OnClick="btnInicioASPX_Click" />
            </div>
        </div>

    </form>
</body>
</html>
