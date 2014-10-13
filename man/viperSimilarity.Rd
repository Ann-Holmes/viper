\name{viperSimilarity}
\alias{viperSimilarity}
\title{VIPER similarity}
\usage{
viperSimilarity(x, nn = NULL, ws = 2, method = c("greater", "less",
  "two.sided"))
}
\arguments{
  \item{x}{Numeric matrix containing the VIPER results with
  samples in columns and regulators in rows}

  \item{nn}{Optional number of top regulators to consider
  for computing the similarity}

  \item{ws}{Number indicating the weighting exponent for
  the signature, only used if \code{nn} is ommited}

  \item{method}{Character string indicating whether the
  most active (greater), less active (less) or both tails
  (two.sided) of the signature should be used for computing
  the similarity}
}
\value{
signatureDistance object
}
\description{
This function computes the similarity between VIPER
signatures
}

