\name{pwea3NULLgroups}
\alias{pwea3NULLgroups}
\title{Regulon-specific NULL model}
\usage{
pwea3NULLgroups(pwnull, groups, verbose = TRUE)
}
\arguments{
  \item{pwnull}{Numerical matrix representing the null
  model, with genes as rows (geneID as rownames) and
  permutations as columns}

  \item{groups}{List containing the regulons}

  \item{verbose}{Logical, whether progression messages
  should be printed in the terminal}
}
\value{
A list containing two elements: \describe{
\item{groups}{Regulon-specific NULL model containing the
enrichment scores} \item{ss}{Direction of the
regulon-specific NULL model} }
}
\description{
This function generates the regulon-specific NULL models
}

