<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="GuitarShop.Vista.Consultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Brandon's GuitarShopCenter</title>
        <link rel="stylesheet" type="text/css" href="css/barraMenu.css" />
        <link rel="stylesheet" type="text/css" href="css/estiloConsultas.css" />
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
                <h1>Guitarras en Venta</h1>
			    <hr class="linea1"/><br/>

                <form id="form1" runat="server">
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="2" CellSpacing="3" Height="200px" Width="543px" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="Silver" Font-Bold="False" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
                            <asp:BoundField DataField="modelo" HeaderText="modelo" SortExpression="modelo" />
                            <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                            <asp:BoundField DataField="ano" HeaderText="año" SortExpression="ano" />
                        </Columns>
                        <EditRowStyle HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Red" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AplicacionesWebConnectionString %>" SelectCommand="SELECT [clave], [modelo], [marca], [color], [ano] FROM [guitarra]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
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
