### Summary stuff for DS2 final project

> library(mlbench)
> data(BreastCancer)
> library(dplyr)
> BreastCancer <- BreastCancer[,-1] # remove ID column
> summary(BreastCancer) # note that everything is factor

> plot(BreastCancer)

> library(GGally)
> ggpairs(BreastCancer) # note all are factors

> BreastCancer = BreastCancer %>% 
  mutate(Cl.thickness=as.numeric(Cl.thickness)) %>% 
  mutate(Cell.size=as.numeric(Cell.size)) %>%  
  mutate(Cell.shape=as.numeric(Cell.shape)) %>%  
  mutate(Marg.adhesion=as.numeric(Marg.adhesion)) %>%  
  mutate(Epith.c.size=as.numeric(Epith.c.size)) %>%  
  mutate(Bare.nuclei=as.numeric(Bare.nuclei)) %>%  
  mutate(Bl.cromatin=as.numeric(Bl.cromatin)) %>%  
  mutate(Normal.nucleoli=as.numeric(Normal.nucleoli)) %>%  
  mutate(Mitoses=as.numeric(Mitoses))

> ggpairs(BreastCancer) # all but response are numeric

> library(psych)
> dev.off()
> cor.plot(BreastCancer[,-10]) # correlation not including response

> BreastCancer <- BreastCancer %>% mutate(Class = as.numeric(Class)) # numeric response
> dev.off()
> cor.plot(BreastCancer[,])