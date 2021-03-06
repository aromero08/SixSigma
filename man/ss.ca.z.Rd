\name{ss.ca.z}
\alias{ss.ca.cp}
\alias{ss.ca.cpk}
\alias{ss.ca.z}
\title{Capability Indices}
\usage{
ss.ca.cp(x, LSL = NA, USL = NA, LT = FALSE, f.na.rm = TRUE,
  ci = FALSE, alpha = 0.05)
}
\arguments{
  \item{x}{A vector with the data of the process
  performance}

  \item{LSL}{Lower Specification Limit}

  \item{USL}{Upper Specification Limit}

  \item{LT}{Long Term data (TRUE/FALSE). Not used for the
  moment}

  \item{f.na.rm}{Remove NA data (TRUE/FALSE)}

  \item{ci}{If TRUE computes a Confidence Interval}

  \item{alpha}{Type I error (\eqn{\alpha}) for the
  Confidence Interval}
}
\value{
A numeric value for the index, or a vector with the limits
of the Confidence Interval
}
\description{
Compute the Capability Indices of a process, Z (Sigma
Score), \eqn{C_p} and \eqn{C_{pk}}.
}
\examples{
ss.ca.cp(ss.data.ca$Volume,740, 760)
ss.ca.cpk(ss.data.ca$Volume,740, 760)
ss.ca.z(ss.data.ca$Volume,740,760)
}
\author{
EL Cano
}
\references{
Cano, Emilio L., Moguerza, Javier M. and Redchuk, Andres.
2012. \emph{Six Sigma with {R}. Statistical Engineering for
Process Improvement}, Use R!, vol. 36. Springer, New York.
\url{http://www.springer.com/statistics/book/978-1-4614-3651-5}.

Montgomery, DC (2008) \emph{Introduction to Statistical
Quality Control} (Sixth Edition). New York: Wiley&Sons\cr
}
\seealso{
\code{\link{ss.study.ca}}
}
\keyword{capability}
\keyword{cp}
\keyword{cpk}

