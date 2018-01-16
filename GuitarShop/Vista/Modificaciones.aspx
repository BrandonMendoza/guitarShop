<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificaciones.aspx.cs" Inherits="GuitarShop.Vista.Modificaciones" %>

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
                <h1>Modificar Guitarra</h1>
			    <hr class="linea1"/><br/>
                Bienvenido<br />
                Ingresa la clave de la guitarra a modificar y presiona en "Buscar". Despues ingresa los nuevos datos y presiona en guardar cambios <br /><br />

                <form id="form1" runat="server">
                    <div>
                        <table>
                            <tr>
                                <td><asp:Label runat="server">Ingresa la clave del producto a modificar:</asp:Label></td>
                                <td> <asp:TextBox runat="server" ID="txtBuscar" Type="number" required="required"></asp:TextBox> <asp:RequiredFieldValidator runat="server" ControlToValidate="txtBuscar" ErrorMessage="No ingresaste dato a buscar" ForeColor="red"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Button runat="server" Text="Buscar Guitarra" OnClick="Unnamed2_Click"/></td>
                            </tr>
                        </table>
                    </div>
                </form> <br />
                

                <form id="form2" runat="server" visible="False">
                    <div>
                        <table>
                            <tr>
                                <td><asp:Label runat="server">Clave</asp:Label></td>
                                <td><asp:TextBox runat="server" ID="txtClaveM" style="margin-bottom: 0px"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtClaveM" ErrorMessage="Clave es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label runat="server">Marca</asp:Label></td>
                                <td><asp:TextBox runat="server" ID="txtMarcaM"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMarcaM" ErrorMessage="Marca es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label runat="server">Modelo</asp:Label></td>
                                <td><asp:TextBox runat="server" ID="txtModeloM"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtModeloM" ErrorMessage="Modelo es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label runat="server">Color</asp:Label></td>
                                <td> <asp:TextBox runat="server" ID="txtColorM"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtColorM" ErrorMessage="Color es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label runat="server">Año</asp:Label></td>
                                <td><asp:TextBox runat="server" ID="txtAnoM"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAnoM" ErrorMessage="Año es un dato requerido" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Button runat="server" ID="btoGuardarM" Text="Guardar Cambios" OnClick="btoGuardarM_Click" /></td>
                            </tr>
                        </table>
                    </div>
                </form>

                <asp:Label runat="server" ID="txtMensaje"></asp:Label>
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
