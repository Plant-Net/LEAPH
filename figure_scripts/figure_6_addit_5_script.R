library(aweSOM)
library(readr)
library(xml2)
library(Cairo)
library(ggplot2)

setwd("/path/to/LEAPH/github/repo/")
full.data <-read_tsv("./figure_scripts/SOM_scaled_input_tab.csv")
### select only features 
train.data <- as.matrix(full.data[, c("sequence length","signal peptide","transmembrane domain","aa in tr domain","first 60 aa",
                                      "prob N-in","IDRs", "CAMP_PHOSPHO_SITE", 
                                      "PKC_PHOSPHO_SITE", "CK2_PHOSPHO_SITE", "MYRISTYL", "AMIDATION", "ASN_GLYCOSYLATION","ASPARAGINE_RICH", 
                                      "LEUCINE_ZIPPER","MICROBODIES_CTER", "RGD", "TYR_PHOSPHO_SITE_1", "TYR_PHOSPHO_SITE_2",
                                      "CLUMP0","CLUMP3","CLUMP5","CLUMP6","CLUMP7","CLUMP8", "bin1", "bin2", "bin3", "bin4")])

### RNG Seed (for reproducibility)
set.seed(45)
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


### PLOT

plot_clouds <- aweSOMplot(som = data.som, 
                   type = "Cloud",
                   data = full.data,
                   variables = c("secretion"),
                   size = 600)
print(plot_clouds)

### other kind of plots

aweSOMplot(som = data.som, type = "Barplot", data = train.data,
           variables = c("sequence length", "signal peptide",
                         "transmembrane domain","first 60 aa",
                         "prob N-in"),
           values = "median",
           size = 600)

aweSOMplot(som = data.som, type = "Barplot", data = train.data,
           variables = c("IDRs", "CAMP_PHOSPHO_SITE",
                         "PKC_PHOSPHO_SITE", "CK2_PHOSPHO_SITE", "MYRISTYL", "AMIDATION", "ASN_GLYCOSYLATION","ASPARAGINE_RICH",
                         "LEUCINE_ZIPPER","MICROBODIES_CTER", "RGD", "TYR_PHOSPHO_SITE_1", "TYR_PHOSPHO_SITE_2"),
           values = "median", size = 800
           )

aweSOMplot(som = data.som, type = "Barplot", data = train.data,
           variables = c("sequence length","CLUMP0","CLUMP3","CLUMP5","CLUMP6","CLUMP7","CLUMP8", "bin1", "bin2", "bin3", "bin4"),
           values = "median", size = 800)

