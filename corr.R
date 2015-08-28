corr <- function(directory, threshold = 0) {
  files <- list.files( path = "C:/Users/mario/Downloads/Coursera_R Programming/specdata/" )
  cr <- c()
  for(f in 1:length(files)){
    data <- read.csv( paste("C:/Users/mario/Downloads/Coursera_R Programming/specdata/", "/", files[f], sep="") )
    data <- data[complete.cases(data),]
    if ( nrow(data) > threshold ) {
      cr <- c(cr, cor(data$sulfate, data$nitrate))
    }
  }
  return(cr)
}

cr <- corr("specdata", 150)
head(cr)
