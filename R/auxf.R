.ss.prepCanvas<-function(main="Six Sigma graph", sub="My Six Sigma Project",
                        palette=c("#666666", "#BBBBBB", "#CCCCCC", "#DDDDDD", "#EEEEEE")){
#Plot
    grid.newpage()
    grid.rect(gp=gpar(col=palette[2], lwd=2, fill=palette[5]))
    vp.canvas<-viewport(name="canvas",
                        width=unit(1,"npc")-unit(6,"mm"),
                        height=unit(1,"npc")-unit(6,"mm"),
                        layout=grid.layout(3,1,
			heights=unit(c(3,1,2), c("lines", "null", "lines"))
		))
    pushViewport(vp.canvas)
    grid.rect(gp=gpar(col="#FFFFFF", lwd=0, fill="#FFFFFF"))

#Title
    vp.title<-viewport(layout.pos.col=1, layout.pos.row=1, name="title")
    pushViewport(vp.title)
    grid.text (main, gp=gpar(fontsize=20))
    popViewport()

#Subtitle
    vp.subtitle<-viewport(layout.pos.col=1, layout.pos.row=3, name="subtitle")
    pushViewport(vp.subtitle)
    grid.text ( sub, gp=gpar(col=palette[1]))
    popViewport()

#Container
    vp.container<-viewport(layout.pos.col=1, layout.pos.row=2, name="container")
    pushViewport(vp.container)
}

#Getting constans for Control Charts
.ss.cc.getConst<-function(sample.size,const="stop('Constant' requiered"){
    if (sample.size>25){
        stop("Not developed yet for sample sizes greater than 25")
    }
    data(ss.data.ccConstants)
    switch (const,
            "d2"=subset(ss.data.ccConstants,rr.n==sample.size)$d2,
            "d3"=subset(ss.data.ccConstants,rr.n==sample.size)$d3,
            "c4"=subset(ss.data.ccConstants,rr.n==sample.size)$c4,
            stop("Incorrect constant")
            )
}