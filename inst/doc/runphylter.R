## ----setup, echo=FALSE, message=FALSE, warning=FALSE--------------------------
require(phylter)
require(ape)

## ---- eval = FALSE------------------------------------------------------------
#  install.packages("remotes")

## ---- eval = FALSE------------------------------------------------------------
#  remotes::install_github("damiendevienne/phylter")

## ---- eval = FALSE------------------------------------------------------------
#  library("phylter")

## ---- eval = FALSE------------------------------------------------------------
#  if (!requireNamespace("ape", quietly = TRUE))
#     install.packages("ape")
#  trees <- ape::read.tree("treefile.tre")

## ---- eval = FALSE------------------------------------------------------------
#  results <- phylter(trees, gene.names = names)

## ---- eval = FALSE------------------------------------------------------------
#  phylter(X, bvalue = 0, distance = "patristic", k = 3, k2 = k, Norm = "median",
#    Norm.cutoff = 0.001, gene.names = NULL, test.island = TRUE,
#    verbose = TRUE, stop.criteria = 1e-5, InitialOnly = FALSE,
#    normalizeby = "row", parallel = TRUE)

## ---- eval = FALSE------------------------------------------------------------
#  results$Final$Outliers

## ---- eval = FALSE------------------------------------------------------------
#  # Get a summary: nb of outliers, gain in concordance, etc.
#  summary(results)
#  
#  # Show the number of species in each gene, and how many per gene are outliers
#  plot(results, "genes")
#  
#  # Show the number of genes where each species is found, and how many are outliers
#  plot(results, "species")
#  
#  # Compare before and after genes $\times$ species matrices, highlighting missing data and outliers
#  # identified (not efficient for large datasets)
#  plot2WR(results)
#  
#  # Plot the dispersion of data before and after outlier removal. One dot represents one
#  # gene $\times$ species association
#  plotDispersion(results)
#  
#  # Plot the genes $\times$ genes matrix showing pairwise correlation between genes
#  plotRV(results)
#  
#  # Plot optimization scores during optimization
#  plotopti(results)

## ---- eval = FALSE------------------------------------------------------------
#  write.phylter(results, file = "phylter.out")

## ---- results='hide'----------------------------------------------------------
data(carnivora, package = "phylter")
results <- phylter(carnivora) # for example

## -----------------------------------------------------------------------------
summary(results)

## -----------------------------------------------------------------------------
results$Initial
results$Final

## -----------------------------------------------------------------------------
results$Final$Outliers

## ---- eval = FALSE------------------------------------------------------------
#  write.phylter(results)

