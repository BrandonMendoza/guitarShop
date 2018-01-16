<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GuitarShop.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Brandon's GuitarShopCenter</title>
        <link rel="stylesheet" type="text/css" href="Vista/css/barraMenu.css" />
        <link rel="stylesheet" type="text/css" href="Vista/css/estiloIndex.css" />
    </head>
    <body>
        <header>
            Brandon's Guitar Shop Center
            <img src="Vista/img/lgGuitar.png" alt="Alternate Text" class="headerImg"/>
            <img src="Vista/img/bass.png" alt="Alternate Text" class="headerImg"/>
            <img src="Vista/img/drums.png" alt="Alternate Text" class="headerImg"/>
        </header>
        <nav>
            <ul>
				<li><a href="Index.aspx">Inicio</a></li>
				<li><a href="Vista/Consultas.aspx">Consultar Guitarras</a></li>
				<li><a href="Vista/Altas.aspx">Altas</a></li>
                <li><a href="Vista/Bajas.aspx">Bajas</a></li>
                <li><a href="Vista/Modificaciones.aspx">Modificaciones</a></li>
			</ul>
        </nav>
        <section id="sectionIndex">

            <article id="art1">
                <div id="contBanner">
                    <div class="textoEncima">
                        <span>
                            <img src="Vista/img/lgGuitar.png" alt="Alternate Text" id="img2"/>
                            Brandon's Shop Guitar Center
                        </span>
                    </div>
                    <img src="Vista/img/portada/3.jpg" alt="Alternate Text" id="imgBanner"/>
                    
                </div>
            </article>

            <article id="art2">
                <br />
                <h1>Brandon's Guitar Shop Center</h1>
			    <hr class="linea1"/><br/>

                <div class="cuadros">
						<div class="cuadrito">

							<div class="rectangulito"><h3>Mision</h3></div>
							<br/>
							Nuestra mision es venderte calidad de guitarras a precios accesibles
						</div>

						<div class="cuadrito">
							
							<div class="rectangulito"><h3>Vision</h3></div>
							<br/>
							Ser una tienda de instrumentos musicales reconocida a nivel internacional
					
						</div>

						<div class="cuadrito">
							<div class="rectangulito"><h3>Experiencia</h3></div>
							<br/>
							20 años de excelencia de servicio nos respaldan, Pregunta por nosotros					
						</div>
					</div>
            </article>

            <article id="art3">
                <br />
                <h1>Acerca</h1>
					<hr class="linea1"/><br/>
                        <div id="textoAcerca">
                            Brandon's es el hogar de los mundos más grande selección de guitarras populares, bajos, amplificadores, teclados, estaciones de trabajo, tambores, percusión, micrófonos, sistemas de megafonía, equipo de DJ, iluminación de la etapa, software, equipos de estudio y más de grabación. Con el respaldo de más de 260 tiendas en todo el país, GuitarCenter.com ofrece la manera más rápida, más fácil de encontrar todo el equipo que necesitas en un solo lugar. Y, si bien muchos instrumentos populares están disponibles para su recogida en el mismo día en una tienda cerca de usted, también ofrecemos el envío gratis en miles de artículos a la localización del centro de la guitarra de su elección.

                            Debido a nuestro poder de compra increíble y relaciones sólidas con todas las mejores marcas de instrumentos musicales, que te van a encontrar toda la mejor engranaje al precio más bajo garantizado. De todos los nuevos Gibson EE.UU. 2016 cambios a la mayor colección de Strats, tenemos todo un guitarrista podría pedir, por no hablar de nuestra vasta colección de pedales de efectos y accesorios. <br /><br />

                            Los baterías no necesitan buscar más para la mayor selección de la mejor engranaje del tambor, incluyendo conjuntos acústicos de batería, los juegos de batería electrónica, tambores de la mano, platillos y palos. Y para el artista independiente, echa un vistazo a Avid Pro Tools, PreSonus StudioLive, Epix Bundle 10, y Komplete 10 - además de nuestros productos de sonido en vivo, desde mezcladores a monitores y mucho más, se adapte a las necesidades de cualquier músico dando conciertos.<br /><br />
    
                            No sabe cómo jugar y quiere empezar? Es fácil con Guitar Center enorme variedad de libros y medios. Y los jugadores de todos los niveles pueden asistir a las clases de los talleres libres de la serie y Grabación sencilla todas las semanas. ¿Es usted un guitarrista de mucho tiempo buscando algo especialmente único? Echa un vistazo a nuestros instrumentos de platino y engranaje del línea o en persona en su tienda local de GC. A partir de la Gibson Les Paul a los Stratocasters Fender, tenemos todo cubierto. Incluso ofrecemos una amplia gama de instrumentos y accesorios de la banda y orquesta en GuitarCenter.com.<br /><br />

                            Buscando ayuda adicional con la grabación de su música? GC se ha asociado con los expertos en el estudio automática para ofrecer servicios de estudios de grabación en línea. Pueden tomar su idea de la canción y convertirla en una canción totalmente producida en 5-7 días laborales. Visita nuestra página Estudio automática para obtener más información sobre el servicio, el proceso, y escuchar algunas muestras.<br /><br />

                            Sin importar su nivel de experiencia o preferencia musical, nuestro equipo de expertos de músicos experimentados le ayudarán a encontrar la pieza correcta de la equipación de tu banda, conjunto o sala de conciertos. Ya sea que usted acaba de empezar a hacer música, o usted es un profesional de trabajo, centro de la guitarra tiene lo que necesita para ayudar a que los sonidos en su cabeza una realidad.<br />
                        </div>
                        <br/>   
                        <hr class="linea1"/><br/>

            </article>
        </section>

        <footer>
            
            <div id="rs">
                
                Nuestras Redes Sociales: <br /><br />
                <img src="Vista/img/footer/fb.png" alt="Alternate Text" class="imgRedSocial"/>
                <img src="Vista/img/footer/insta.png" alt="Alternate Text" class="imgRedSocial"/>
                <img src="Vista/img/footer/twi.png" alt="Alternate Text" class="imgRedSocial"/>
                <img src="Vista/img/footer/yt.png" alt="Alternate Text" class="imgRedSocial"/>   
            </div>
            <br /><br />
            Creado por Brandon Mendoza Tovar en Mayo del 2016
        </footer>
        
    </body>
</html>
