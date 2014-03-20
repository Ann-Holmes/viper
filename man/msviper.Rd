\name{msviper}
\alias{msviper}
\title{msVIPER}
\usage{
  msviper(ges, regulon, nullmodel = NULL, minsize = 25,
    adaptive.size = FALSE, iterative = FALSE,
    ges.filter = TRUE, synergy = 0, level = 10,
    verbose = TRUE)
}
\arguments{
  \item{ges}{Vector containing the gene expression
  signature to analyze, or matrix with columns containing
  bootstraped signatures}

  \item{regulon}{Object of class regulon}

  \item{nullmodel}{Matrix of genes by permutations
  containing the NULL model signatures. A parametric
  approach equivalent to shuffle genes will be used if
  nullmodel is ommitted.}

  \item{minsize}{Number indicating the minimum allowed size
  for the regulons}

  \item{adaptive.size}{Logical, whether the weight
  (likelihood) should be used for computing the regulon
  size}

  \item{iterative}{Logical, whether a two step analysis
  with adaptive redundancy estimation should be performed}

  \item{ges.filter}{Logical, whether the gene expression
  signature should be limited to the genes represented in
  the interactome}

  \item{synergy}{Number indicating the synergy computation
  mode: (0) for no synergy computation; (0-1) for
  establishing the p-value cutoff for individual TFs to be
  included in the synergy analysis; (>1) number of top TFs
  to be included in the synergy analysis}

  \item{level}{Integer, maximum level of combinatorial
  regulation}

  \item{verbose}{Logical, whether progression messages
  should be printed in the terminal}
}
\value{
  A msviper object containing the following components:
  \describe{ \item{signature}{The gene expression
  signature} \item{regulon}{The final regulon object used}
  \item{es}{Enrichment analysis results including regulon
  size, normalized enrichment score and p-value}
  \item{param}{msviper parameters, including
  \code{minsize}, \code{adaptive.size}, \code{iterative}} }
}
\description{
  This function performs MAster Regulator INference
  Analysis
}
\examples{
data(bcellViper, package="bcellViper")
sig <- rowTtest(dset, "description", c("CB", "CC"), "N")$statistic
dnull <- ttestNull(dset, "description", c("CB", "CC"), "N", per=1000)
mra <- msviper(sig, regulon, dnull)
plot(mra, cex=.7)
}
\seealso{
  \code{\link{viper}}
}

