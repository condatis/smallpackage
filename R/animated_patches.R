library(ggplot2)
library(gganimate)
library(gifski)

myexpr<- "sum(Pj*(exp(-alpha*dij))*Aj^b)"
mypartext<- "alpha=2; b=0.5"
myextratext<- ""

myfun<-create.imm.function(exprtext=myexpr,parstext=mypartext,extratext=myextratext)

mypatches<-read.table("data/patches.txt", header = TRUE)

mypatches$Si<-myfun(Pi=mypatches$Pi,patchdata=mypatches)

#with(mypatches,plot(xi,yi,pch=c(0,15)[Pi+1],cex=Ai,xlim=c(-1,2),ylim=c(-1,4)))
#with(mypatches,text(xi,yi,round(Si,3),pos=3))

## standard ggplot2
myPlot <- ggplot(mypatches, aes(xi, yi, size = Ai,
                                colour= Pi,
                                label= round (Si,3))) +
  geom_text(size=4, vjust = 0, nudge_y = 0.5,
            show.legend = FALSE)+
  geom_point(shape= "square",show.legend = FALSE) +
  theme(panel.background = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_rect(colour = "grey", fill=NA))+
  scale_size(range = c(10, 20)) +
  # Here comes the gganimate specific bits
  labs(title = 'Stage: {frame_time}', x = 'xi', y = 'yi') +
  transition_time(stage) +
  ease_aes('linear')

animate(myPlot, duration = 3, fps = 1, width = 250, height = 250, renderer = gifski_renderer())
anim_save("output.gif")

