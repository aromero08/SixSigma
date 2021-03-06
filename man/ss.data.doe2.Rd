\docType{data}
\name{ss.data.doe2}
\alias{ss.data.doe2}
\title{Data for the pizza dough example (robust design)}
\format{A data frame with 64 observations on the following 7 variables.
  \describe{
    \item{\code{repl}}{Replication id}
    \item{\code{flour}}{Level of flour in the recipe (\code{-} \code{+})}
    \item{\code{salt}}{Level of salt in the recipe (\code{-} \code{+})}
    \item{\code{bakPow}}{Level of Baking Powder in the recipe (\code{-} \code{+})}
    \item{\code{temp}}{Level of temperature in preparation (\code{-} \code{+})}
    \item{\code{time}}{Level of time in preparation (\code{-} \code{+})}
    \item{\code{score}}{Scored assigned to the recipe}
  }}
\source{
See references.
}
\usage{
data(ss.data.doe2)
}
\description{
Experimental data for the scores given to a set of pizza
doughs. Noise factors added for robust design.
}
\note{
This data set is used in chapter 11 of the book ``Six Sigma
with R'' (see References).
}
\examples{
data(ss.data.doe2)
summary(ss.data.doe2)
library(lattice)
bwplot(score ~ temp | time, data = ss.data.doe2)
}
\references{
Cano, Emilio L., Moguerza, Javier M. and Redchuk, Andrés.
2012. \emph{Six Sigma with {R}. Statistical Engineering for
Process Improvement}, Use R!, vol. 36. Springer, New York.
\url{http://www.springer.com/statistics/book/978-1-4614-3651-5}.\cr
}
\keyword{data}
\keyword{doe}

