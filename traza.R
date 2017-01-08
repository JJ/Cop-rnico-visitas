library(ggplot2)
library(ggthemes)
datos.2016 <- read.table('2016.dat')
datos.2017 <- read.table('2017.dat')
datos <- data.frame( dia=c(1:nrow(datos.2016),1:nrow(datos.2017)),
                    year=c(rep('2016',nrow(datos.2016)),rep('2017',nrow(datos.2017))),
                    visitas=c(datos.2016$V1,datos.2017$V1))
ggplot(datos,aes(x=dia,y=visitas,group=year,col=year))+geom_line()

