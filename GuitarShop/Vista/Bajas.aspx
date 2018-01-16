<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bajas.aspx.cs" Inherits="GuitarShop.Vista.Bajas" %>

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
                <h1>Dar de Baja Guitarra</h1>
			    <hr class="linea1"/><br/>
                Bienvenido<br />
                Ingresa la clave de la guitarra a eliminar y presiona en "Buscar" y Despues en "Eliminar" <br /><br />

                <form runat="server" id="form1" >
                    <div>
                        <table>
                            <tr>
                                <td><asp:Label runat="server">Ingresa la clave del producto a Eliminar:</asp:Label></td>
                                <td><asp:TextBox runat="server" ID="txtBuscar" Type="number" required="required"></asp:TextBox><asp:RequiredFieldValidator runat="server" ControlToValidate="txtBuscar" ErrorMessage="No ingresaste Dato a Buscar" ForeColor="red"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Button runat="server" Text="Buscar Guitarra" OnClick="Unnamed2_Click" ID="btnBuscar" /></td>
                            </tr>
                            
                        </table>
                        
                        
                        
                        
                    </div>
                
                    <div id="form2" runat="server" visible="false">
                        <asp:Label runat="server" ID="txtSeguro">Estas seguro</asp:Label>
                        <asp:Button runat="server" ID="btnSi" Text="Eliminar" OnClick="btnSi_Click"/>
                        <asp:Button runat="server" ID="btnNo" Text="No" OnClick="btnNo_Click"/>
                    </div>
                </form> <br />

                <asp:Label runat="server" ID="txtMensaje"></asp:Label>
                <asp:Label runat="server" ID="txtJavascript" Visible="False"></asp:Label>
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
