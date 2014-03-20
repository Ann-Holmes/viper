\docType{methods}
\name{viperSignature}
\alias{viperSignature}
\alias{viperSignature,ExpressionSet-method}
\alias{viperSignature,matrix-method}
\title{Generic S4 method for signature and sample-permutation null model for VIPER}
\usage{
\S4method{viperSignature}{matrix}(eset, ref, per = 1000, seed = 1, verbose = TRUE)
\S4method{viperSignature}{ExpressionSet}(eset, pheno, refgroup, per = 1000, seed = 1, verbose = TRUE)
}
\arguments{
  \item{eset}{ExpressionSet object or numeric matrix
  containing the test dataset, with genes in rows and
  samples in columns}

  \item{pheno}{Character string indicating the phenotype
  data to use}

  \item{refgroup}{Vector of character string indicatig the
  category of \code{pheno} to use as reference group}

  \item{per}{Integer indicating the number of sample
  permutations}

  \item{seed}{Integer indicating the seed for the random
  sample generation. The system default is used when set to
  zero}

  \item{verbose}{Logical, whether progression messages
  should be printed in the terminal}

  \item{ref}{Numeric matrix containing the reference
  samples (columns) and genes in rows}
}
\value{
  viperSignature S3 object containing the signature and
  null model
}
\description{
  This function generates a viperSignature object from a
  test dataset based on a set of samples to use as
  reference
}
\examples{
data(bcellViper, package="bcellViper")
ss <- viperSignature(dset, "description", c("N", "CB", "CC"))
res <- viper(ss, regulon)
dim(exprs(dset))
exprs(dset)[1:5, 1:5]
regulon
dim(res)
res[1:5, 1:5]
data(bcellViper, package="bcellViper")
d1 <- exprs(dset)
ss <- viperSignature(d1[, -(1:5)], d1[, 1:5])
res <- viper(ss, regulon)
dim(d1)
d1[1:5, 1:5]
regulon
dim(res)
res[1:5, 1:5]
}

