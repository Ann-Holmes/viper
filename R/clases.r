# Clases documentation

#' @import Biobase
#' @import methods
#' @importFrom stats as.dist
#' @importFrom mixtools normalmixEM
#' @importFrom parallel mclapply
#' @importFrom e1071 interpolate
#' @importFrom KernSmooth bkde2D
NULL

#' The msviper class
#'
#'  This class contains the results generated by the msviper function
#'  
#'  @section Slots:
#'    \describe{
#'      \item{\code{signature}:}{Matrix containing the gene expression signature}
#'      \item{\code{regulon}:}{Object of class \code{regulon}}
#'
#'      \item{\code{es}:}{List containing 6 objects:}
#'        \item{\code{es$es}:}{Named vector of class \code{numeric} containing the enrichment scores}
#'        \item{\code{es$nes}:}{Named vector of class \code{numeric} containing the normalized enrichment scores}
#'        \item{\code{es$nes.se}:}{Named vector of class \code{numeric} containing the standard error for the normalized enrichment score}
#'        \item{\code{es$size}:}{Named vector of class \code{numeric} containing the size -number of target genes- for each regulator}
#'        \item{\code{es$p.value}:}{Named vector of class \code{numeric} containing the enrichment p-values}
#'        \item{\code{es$nes.bt}:}{Matrix containing the normalized enrichment score if the msviper test is performed with bootstraps}
#'
#'      \item{\code{param}:}{List containing 3 elements:}
#'        \item{\code{param$minsize}:}{Integer indicating the minimum allowed size for the regulons}
#'        \item{\code{param$adaptive.size}:}{Logical indicating whether the weight (likelihood) should be used for computing the regulon size}
#'        \item{\code{param$iterative}:}{Logical indicating whether a two step analysis with adaptive redundancy estimation should be performed}
#'
#'      \item{\code{nullmodel}:}{Matrix of genes by permutations containing the NULL model signatures}
#'      \item{\code{ledge}:}{List containing the leading edge genes for each regulator. This slot is added by the \code{ledge} function}
#'      \item{\code{shadow}:}{Two columns matrix containing the gene names for the shadow pairs. The first column contain the most probble regulator and the second column the one that was identified because a shadow effect}
#'    }
#'  @name msviper-class
NULL
#' The regulon class
#' 
#' This class contains interactome data
#' 
#' @section Slots:
#'  List of regulators with the following slots:
#'  \describe{
#'    \item{\code{tfmode}:}{Named vector of class \code{"numeric"} containing the regulator mode of action scores, with target genes as name attribute}
#'    \item{\code{likelihood}:}{Vector of class \code{"numeric"} containing the relative likelihood for each target gene}
#'  }
#'  @name regulon-class
NULL
#' signatureDistance
#' 
#' This class contains the results generated by \code{signatureDistance} function.
#' 
#' @section Slots:
#' Matrix of class \code{"numeric"} containing the similarity scores
#' @name signatureDistance-class
NULL
#' viperSignature
#' 
#' This class contains the results produced by the \code{viperSignature} function
#' 
#' @docType class
#' @section Slots:
#'  \describe{
#'    \item{\code{signature}:}{Matrix of class \code{numeric} with genes in rows and samples in columns containing the gene expression signatures}
#'    \item{\code{nullmodel}:}{Matrix of class \code{"numeric"} with genes in rows and permutations in columns ontaining the sample-permutation based signatures to be used as NULL model}
#'  }
#' @name viperSignature-class
NULL
