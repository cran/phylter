% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/impMean.R
\name{impMean}
\alias{impMean}
\title{Imputation of missing values in a collection of matrices}
\usage{
impMean(matrices)
}
\arguments{
\item{matrices}{A list of distance matrices.}
}
\value{
Returns a list of matrices with same dimensions, with rows and columns 
in the same order and missing data (if any) imputed.
}
\description{
Impute missing data in a list of matrices. Matrices are first given the same dimension, 
then missing entries are filled by computing the average value in non-missing corresponding
entries in all matrices.
}
\examples{
data(carnivora)
matrices <- phylter(carnivora, InitialOnly = TRUE, parallel = FALSE)$matrices

# remove n species randomly (n between 1 and 5) in each matrix (to mimic missing data)
fun<-function(mat) {
 species2remove<-sample(1:nrow(mat),sample(1:5,1))
 mat<-mat[-species2remove,-species2remove]
 return(mat)
}
matrices.missing<-lapply(matrices, fun)
#check that all matrices have now different dimensions: 
lapply(matrices.missing, dim)
# Impute data to get back to the same dimensions
matrices.ok<-impMean(matrices.missing)
lapply(matrices.ok, dim) #all dimensions are now identical. Missing data have been imputed. 

}
