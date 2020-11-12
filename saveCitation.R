rm(list = ls())
library('rcrossref')
paper <- as.matrix(read.csv("./paper.csv",header=T))
links <- paper[,3]
length(links)
for (i in 1:6){
  dat = data.frame(ID = i,count = cr_citation_count(links[i]))
  i++
}
write.csv(citaions,"paperCitations.csv",row.names = F)

