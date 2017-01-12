# Visitando a Copérnico

Un mini-informe sobre las visitas al artículo de la Wikipedia de
Copérnico después del [incidente Copérnico](http://verne.elpais.com/verne/2017/01/07/articulo/1483785572_720611.html)

## Herramientas necesarias


Estos scripts funcionan en Linux. Posiblemente también en la línea de
órdenes de Mac y en el subsistema ubuntu de Windows 10 o en Cygwin.


La principal herramienta es `curl` para descargarse los ficheros y
rstudio para generar el informe. `jq` es también fundamental y se usa
para filtrar los ficheros que se descargan en formato JSON. 
RStudio se encargará de instalar los
módulos necesarios para ejecutarlo, una vez que se intente generar el
informe desde `visitas.Rmd`, que incluye el código fuente del mismo.

Los ficheros de visitas se descargan con:

	./descarga.sh
	
Necesitas Perl y `cpanm` para ejecutar los filtros de ránking. Instala
los módulos con 

	cpanm --installdeps .

y ejecútalos con

	./filter-special.pl ranking-110117.json > datos/ranking-110117-filtrado.json

para eliminar las páginas "Especiales" de la Wikipedia, portada y
similares. 

Para extraer el puesto en el que se encuentra una página determinada,
algo así como:

	jq '.[] | select(.articulo=="Nicolás_Copérnico") | .puesto' ranking-*-filtrado.json > puesto.dat
	
Habrá que cambiar la página y el nombre del fichero de salida,
claro. Este *script* mira en todos los ránkings de páginas más
visitadas y extrae en un fichero el puesto en el que están. 

## Datos

En el subdirectorio [`datos`](datos/) están todos los ficheros
extraidos hasta el momento, actualizados al día que tengan en su
fecha.


