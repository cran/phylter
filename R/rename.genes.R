#' Name or rename a list of gene trees or matrices
#' 
#' Name or rename a list of gene trees or gene matrices genes. For internal use mostly. 
#' 
#' 
#' @param X A list of trees or matrices
#' @param gene.names List of names to assign to the elements of X. Must be of the same length as length(X). 
#' If NULL (the default) the object are numbered 1,2,...,length(X).
#' @return X with name assigned to each element.
#' @examples
#' 
#' data(carnivora)
#'
#' # names before renaming
#' names(carnivora)
#' 
#' carnivora.renamed<-rename.genes(carnivora, gene.names=as.character(1:length(carnivora)))
#'
#' # names after renaming
#' names(carnivora.renamed)
#' @export
rename.genes <- function(X, gene.names = NULL) {
  if(!is.null(gene.names)) {
    names(X) <- gene.names
  } else {
    if(is.null(names(X))) {
      names(X) <- as.character(c(1:length(X)))
    }
  }
  return(X)
}
