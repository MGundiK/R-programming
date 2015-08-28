#complete <- function(directory, id = 1:332){
#  dir <- c(paste(("C:/Users/mario/Downloads/Coursera_R Programming/specdata"), "specdata", sep=""))
#  #setwd(dir)
#  x <- list.files(pattern=".csv")
#  y <- lapply(x, read.table, header = TRUE, sep=",")
#  z <- do.call(rbind, y)
#  data <- z[complete.cases(z), ]
#  d.fr <- NULL
#  for (i in id){
#    d.fr <- rbind(d.fr, data.frame(id=i, nobs=nrow(subset(data, ID == i))))
#  }
#  print(d.fr)
#}

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))

#pollutantmean <- function(directory, pollutant, id = 1:332){
#  setwd("C:/Users/mario/Downloads/Coursera_R Programming/specdata")
#}


#install.packages("plyr")

#source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")



complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))


complete <- function(directory, id = 1:332){
  resultdf <- data.frame(id=integer(0), nobs = numeric(0))
  for(curid in id){
    fn <- paste("C:/Users/mario/Downloads/Coursera_R Programming/specdata/", "/",formatC(curid, width=3, flag = "0"),".csv",sep="")
    data <- read.csv(fn)
    resultdf = rbind(resultdf, data.frame(id=curid, nobs=sum(complete.cases(data))))
  }
  resultdf
}
