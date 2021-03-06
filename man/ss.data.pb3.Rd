\docType{data}
\name{ss.data.pb3}
\alias{ss.data.pb3}
\title{Particle Boards Example - Attribute data}
\format{A data frame with 22 observations on the following 3 variables.
  \describe{
    \item{\code{day}}{Day id}
    \item{\code{stockouts}}{Number of stockouts}
    \item{\code{orders}}{Number of orders}
  }}
\source{
See references.
}
\usage{
data(ss.data.pb3)
}
\description{
Counts of raw materials stockouts during 22 weekdays in a
month.
}
\note{
This data set is used in chapter 12 of the book ``Six Sigma
with R'' (see References).
}
\examples{
data(ss.data.pb3)
summary(ss.data.pb3)
if (require(qcc)){
with(ss.data.pb3,
		plot(qcc(stockouts, orders, type ="p"))
	)
} else {
message("qcc package is needed to run this example")
}
}
\references{
Cano, Emilio L., Moguerza, Javier M. and Redchuk, Andrés.
2012. \emph{Six Sigma with {R}. Statistical Engineering for
Process Improvement}, Use R!, vol. 36. Springer, New York.
\url{http://www.springer.com/statistics/book/978-1-4614-3651-5}.\cr
}
\keyword{cc}
\keyword{data}

