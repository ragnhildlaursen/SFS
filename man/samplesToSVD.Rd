% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/samplesToSVD.R
\name{samplesToSVD}
\alias{samplesToSVD}
\title{Finding SVD representation from solutions of matrices P and E}
\usage{
samplesToSVD(
  Presults,
  Eresults,
  N,
  Mfit = t(Presults[1:N, ]) \%*\% Eresults[1:N, ]
)
}
\arguments{
\item{Presults}{Matrix of results of P transposed stacked on top of each other. Dimension is (N*results x nrow(P)).}

\item{Eresults}{Matrix of results of E stacked on top of each other. Dimension is (N*results x ncol(E))}

\item{N}{The rank of the factorization}

\item{Mfit}{The initial factorization of P and E to use as a reference for the eigenvectors. 
Default is the factorization of the first matrix in Presults and Eresults.}
}
\value{
The SVD representation of the set of feasible solutions
\itemize{
 \item P.points - Matrix of P results as SVD solution (results x (N-1)).
 \item E.points - Matrix of E results as SVD solution (results x (N-1)).
 }
}
\description{
Finding SVD representation from solutions of matrices P and E
}
