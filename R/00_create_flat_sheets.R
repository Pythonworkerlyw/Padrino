library(fs)

library(pdbDigitUtils)

xl <- read_pdb("padrino-database/xl/hand_cleaned_padrino.xlsx")
tl <- read_pdb("padrino-database/xl/pdb_tomos.xlsx")
tl$Metadata$.test_passed <- NA

xl <- lapply(seq_along(xl),
             function(ind, pdb, tomos) {
               cat("Table", ind, "successfully combined.\n")
               
               rbind(pdb[[ind]], tomos[[ind]])
               
             },
             pdb = xl,
             tomos = tl)

names(xl) <- names(tl)

dir_walk("padrino-database/raw", fun = file_delete)

 
xl <- lapply(xl, function(x) {
  class(x) <- 'data.frame'
  x[x == "NA"] <- NA
  return(x)
})



for(i in seq_along(xl)) {
  
  temp <- names(xl)[i]
  
  if(temp == "HierarchTable") temp <- "ParSetIndices"
  
  write.table(xl[[i]], 
              file         = paste("padrino-database/raw/", temp,".txt", sep = ""),
              row.names    = FALSE,
              sep          = "\t",
              quote        = TRUE,
              na           = "NA",
              fileEncoding = "UTF-8")
  
}
