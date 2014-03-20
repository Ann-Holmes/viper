\name{frvarna}
\alias{frvarna}
\title{Variance of rows for arrays with NA values}
\usage{
  frvarna(x)
}
\arguments{
  \item{x}{Numeric matrix}
}
\value{
  1-column matrix with the variance by row results
}
\description{
  This function computes the variance by rows ignoring NA
  values
}
\examples{
data(bcellViper, package="bcellViper")
tmp <- exprs(dset)[1:10, ]
tmp[round(runif(100, 1, length(tmp)))] <- NA
frvarna(tmp)
}

