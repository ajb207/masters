

#line count to get number of reads


lineCount <- function(linecounts){
  #rename columns
  colnames(linecounts) <- c("lines", "file")
  #every forth line is a sequence, so divide by 4
  linecounts[,1] <- linecounts[,1]/4
  linecounts[,2] <- gsub("_.*", "", linecounts[,2])
  return(linecounts)
}