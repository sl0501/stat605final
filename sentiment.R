args = (commandArgs(trailingOnly=TRUE))
if(length(args) == 1){
  fileName = args[1]
} else {
  cat('usage: Rscript sentiment.R <fileName>\n', file=stderr())
  stop()
}
pkgs <- c("data.table")
for(x in pkgs){
  if(!is.element(x, installed.packages()[,1]))
    {install.packages(x, repos="http://cran.fhcrc.org")
  } else {print(paste(x, " library already installed"))}
}
library(data.table)
library(tidyverse)

df = as.data.frame(fread(paste(fileName, ".tsv", sep = "")))
basic<-df%>%
  summarize(average_rating = mean(star_rating), median_rating = median(star_rating))
write.table(basic,paste(fileName, ".txt", sep = ""))