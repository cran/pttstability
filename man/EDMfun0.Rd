% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/particlefilter.R
\name{EDMfun0}
\alias{EDMfun0}
\title{EDM deterministic function}
\source{
Adapted from Ye, Sugihara, et al. (2015), PNAS 112:E1569-E1576.
}
\usage{
EDMfun0(smp_cf, yp, x, minest = 0, maxest = NULL, time)
}
\arguments{
\item{smp_cf}{a matrix of s-map coefficients. Columns correspond to intercept and time lags, rows to observations. Final column corresponds to intercept term.}

\item{yp}{a matrix of covariates to be multiplied by the smp_cf (typically time lags). Should have one fewer column than smp_cf.}

\item{x}{observation at time-1, to be used to make the prediction.}

\item{minest}{minimum value to return for prediction - defaults to 0.}

\item{maxest}{maximum value to return for prediction - defaults to NULL (no maximum)}

\item{time}{the time step (i.e. position in smp_cf) for the desired prediction. Prediction will be made based on observation in preceding time point (i.e. time-1).}
}
\value{
a number or numeric vector of length xt, with predicted abundances at time t+1
}
\description{
Estimates future states of xt based on based behaviour
}
\keyword{EDM}
