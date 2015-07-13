a <- read.csv("/users/wana/desktop/issdata.csv")
qplot(state,population,data=a,geom="smooth")
