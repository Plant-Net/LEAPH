library(aweSOM)
library(readr)
library(xml2)
library(Cairo)
library(ggplot2)
data()
full.data <-read_tsv("/home/giulia/Workspace/PhytoPhD/period_abroad/LEAF_publication/functional_analysis/reference_SOM_scaled_input_tab.csv")
try.data.features <- as.matrix(try.data[, c("sequence length","signal peptide","transmembrane domain","aa in tr domain","first 60 aa",
                                                "prob N-in","MobiDB-lite", "CAMP_PHOSPHO_SITE", 
                                                "PKC_PHOSPHO_SITE", "CK2_PHOSPHO_SITE", "MYRISTYL", "AMIDATION", "ASN_GLYCOSYLATION","L=0", 
                                                "LEUCINE_ZIPPER","MICROBODIES_CTER", "RGD", "TYR_PHOSPHO_SITE_1", "TYR_PHOSPHO_SITE_2",
                                                "CLUMP0","CLUMP3","CLUMP5","CLUMP6","CLUMP7","CLUMP8", "bin1", "bin2", "bin3", "bin4")])
mapped.data <- read_tsv("/home/giulia/Workspace/PhytoPhD/ShinyApps/mapped.csv")
val_mapped.data <- as.matrix(mapped.data[, c("sequence length","signal peptide","transmembrane domain","aa in tr domain","first 60 aa",
                                           "prob N-in","MobiDB-lite", "CAMP_PHOSPHO_SITE", 
                                           "PKC_PHOSPHO_SITE", "CK2_PHOSPHO_SITE", "MYRISTYL", "AMIDATION", "ASN_GLYCOSYLATION","L=0", 
                                           "LEUCINE_ZIPPER","MICROBODIES_CTER", "RGD", "TYR_PHOSPHO_SITE_1", "TYR_PHOSPHO_SITE_2",
                                           "CLUMP0","CLUMP3","CLUMP5","CLUMP6","CLUMP7","CLUMP8", "bin1", "bin2", "bin3", "bin4")])
### select variables
train.data <- as.matrix(full.data[, c("sequence length","signal peptide","transmembrane domain","aa in tr domain","first 60 aa",
                                      "prob N-in","MobiDB-lite", "CAMP_PHOSPHO_SITE", 
                                      "PKC_PHOSPHO_SITE", "CK2_PHOSPHO_SITE", "MYRISTYL", "AMIDATION", "ASN_GLYCOSYLATION","L=0", 
                                      "LEUCINE_ZIPPER","MICROBODIES_CTER", "RGD", "TYR_PHOSPHO_SITE_1", "TYR_PHOSPHO_SITE_2",
                                      "CLUMP0","CLUMP3","CLUMP5","CLUMP6","CLUMP7","CLUMP8", "bin1", "bin2", "bin3", "bin4")])

### test seeds

# qual <- c()
# for (i in 1:100) {
#   ### RNG Seed (for reproducibility)
#   set.seed(i)
#   ### Initialization (PCA grid)
#   init <- somInit(train.data, 10, 10)
#   data.som <- kohonen::som(
#   train.data,
#   grid = kohonen::somgrid(10, 10, "hexagonal"),
#   rlen = 250,
#   alpha = c(0.05, 0.01),
#   radius = c(2.65, -2.65),
#   dist.fcts = "euclidean",
#   init = init
#   )
#   current_qual <- somQuality(data.som, train.data)
#   len <- length(qual)
#   qual[[len + 1]] <- current_qual["err.varratio"][[1]]
#   }
# 
# print(max(unlist(lapply(qual,FUN=max))))
# print(which.max(qual))

### RNG Seed (for reproducibility)
set.seed(66)
### Initialization (PCA grid)
init <- somInit(train.data, 10, 10)

data.som <- kohonen::som(
  train.data, 
  grid = kohonen::somgrid(10, 10, "hexagonal"),
  rlen = 250,
  alpha = c(0.05, 0.01),
  radius = c(2.65, -2.65),
  dist.fcts = "euclidean",
  init = init
)
somQuality(data.som, train.data)
superclust_hclust <- hclust(dist(data.som$codes[[1]]), "average")
superclasses_hclust <- cutree(superclust_hclust, 20)


### PLOT

for (c in c("viridis", "grey", "rainbow", "heat", "terrain", "topo", 
             "cm", "BrBG", "PiYG", "PRGn", "PuOr", "RdBu", "RdGy", 
             "RdYlBu", "RdYlGn", "Spectral", "Accent", "Dark2", 
             "Paired", "Pastel1", "Pastel2", "Set1", "Set2", 
             "Set3", "Blues", "BuGn", "BuPu", "GnBu", "Greens", 
             "Greys", "Oranges", "OrRd", "PuBu", "PuBuGn", "PuRd", 
             "Purples", "RdPu", "Reds", "YlGn", "YlGnBu", "YlOrBr", "YlOrRd")) {
  print(c)
  plot <- aweSOMplot(som = data.som, 
                     type = "Cloud",
                     data = full.data,
                     variables = c("secretion"),
                     
                     palvar = c,
                     palrev = TRUE,
                     size = 600)
  print(plot)

}
  webshot::webshot(print(plot), file = "/home/giulia/Workspace/PhytoPhD/ShinyApps/save_aweSOM_plot/file.png", vwidth = 800, vheight = 600)

plot <- aweSOMplot(som = data.som, 
                   type = "Cloud",
                   data = full.data,
                   variables = c("secretion"),
                   palsc = "terrain",
                   palvar = "YlGn",
                   palrev = TRUE,
                   size = 1600)
print(plot)
### MAP points on the reference SOM
mapp <- kohonen::map(data.som, val_mapped.data)
new_data <- c(3, 24, 23,4, 16, 23, 24,  4,  8, 26, 15, 24, 40,  8, 17,  4)
data.som$unit.classif <- append(as.list(data.som$unit.classif), new_data)
data.som$unit.classif <- as.double(data.som$unit.classif)  
data.som$distances <- as.double(append(as.list(data.som$distances), as.list(mapp$distances)))
data.som$data <- list(val_mapped.data)

  
### other kind of plots

aweSOMplot(som = data.som, type = "Barplot", data = train.data,
           variables = c("sequence length", "signal peptide",
                         "transmembrane domain","first 60 aa",
                         "prob N-in"),
           values = "median",
           palsc = "terrain",
           palvar = "grey",
           size = 600)

aweSOMplot(som = data.som, type = "Barplot", data = train.data,
           variables = c("CAMP_PHOSPHO_SITE",
                         "PKC_PHOSPHO_SITE", "CK2_PHOSPHO_SITE", "MYRISTYL", "AMIDATION", "ASN_GLYCOSYLATION","L=0",
                         "LEUCINE_ZIPPER","MICROBODIES_CTER", "RGD", "TYR_PHOSPHO_SITE_1", "TYR_PHOSPHO_SITE_2"),
           values = "prototype", size = 800
           )

aweSOMplot(som = data.som, type = "Barplot", data = train.data,
           variables = c("sequence length","CLUMP0","CLUMP3","CLUMP5","CLUMP6","CLUMP7","CLUMP8", "bin1", "bin2", "bin3", "bin4"),
           values = "median")

full.data <- cbind(c(data.som[["unit.classif"]]),full.data)
subset(full.data, full.data[,1] == 39)


