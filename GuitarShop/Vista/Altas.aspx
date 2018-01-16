<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Altas.aspx.cs" Inherits="GuitarShop.Vista.Altas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Brandon's GuitarShopCenter</title>
        <link rel="stylesheet" type="text/css" href="css/barraMenu.css" />
        <link rel="stylesheet" type="text/css" href="css/estiloAltas.css" />
    </head>
    <body>
        <header>
            Brandon's Guitar Shop Center
            <img src="img/lgGuitar.png" alt="Alternate Text" class="headerImg"/>
            <img src="img/bass.png" alt="Alternate Text" class="headerImg"/>
            <img src="img/drums.png" alt="Alternate Text" class="headerImg"/>
        </header>
        <nav>
            <ul>
				<li><a href="../Index.aspx">Inicio</a></li>
				<li><a href="Consultas.aspx">Consultar Guitarras</a></li>
				<li><a href="Altas.aspx">Altas</a></li>
                <li><a href="Bajas.aspx">Bajas</a></li>
                <li><a href="Modificaciones.aspx">Modificaciones</a></li>
			</ul>
        </nav>
        <section id="sectionIndex">

            <article id="art1">
                <div id="contBanner">
                    <div class="textoEncima">
                        <span>
                            <img src="img/lgGuitar.png" alt="Alternate Text" id="img2"/>
                            Brandon's Shop Guitar Center
                        </span>
                    </div>
                    <img src="img/portada/3.jpg" alt="Alternate Text" id="imgBanner"/>
                    
                </div>
            </article>

            <article id="art2">
                <br />
                <h1>Dar de Alta Guitarra</h1>
			    <hr class="linea1"/><br/>
                Ingresa los datos de la guitarra que deseas dar de alta y presiona en "Realizar Alta" <br /><br />

                <form id="form1" runat="server">
                    <div>
                        <table>
                            <tr>
                                <td> <asp:Label runat="server">Clave</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtClave" style="margin-bottom: 0px" Type="number" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtClave" ErrorMessage="Clave es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label runat="server">Marca</asp:Label> </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtMarca" Type="text" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMarca" ErrorMessage="Marca es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td> <asp:Label runat="server">Modelo</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtModelo" Type="text" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtModelo" ErrorMessage="Modelo es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label runat="server">Color</asp:Label> </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtColor" Type="text" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtColor" ErrorMessage="Color es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label runat="server">Año</asp:Label> </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtAno" Type="number" required="required"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAno" ErrorMessage="Año es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>

                             <tr>
                                <td> </td>
                                <td><asp:Button runat="server" Text="Realizar Alta" OnClick="Unnamed9_Click"/><br /> </td>
                            </tr>                       
                        </table>
                        <asp:Label runat="server" ID="txtMensaje"></asp:Label><br />
                    </div>
                </form>                       
            </article>
        </section>

        <footer>
            
            <div id="rs">
                
                Nuestras Redes Sociales: <br /><br />
                <img src="img/footer/fb.png" alt="Alternate Text" class="imgRedSocial"/>
                <img src="img/footer/insta.png" alt="Alternate Text" class="imgRedSocial"/>
                <img src="img/footer/twi.png" alt="Alternate Text" class="imgRedSocial"/>
                <img src="img/footer/yt.png" alt="Alternate Text" class="imgRedSocial"/>   
            </div>
            <br /><br />
            Creado por Brandon Mendoza Tovar en Mayo del 2016
        </footer>
        
    </body>
</html>
