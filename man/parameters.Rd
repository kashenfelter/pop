% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parameters-method.R
\name{parameters}
\alias{parameters}
\alias{parameters<-}
\title{get and set parameters}
\usage{
parameters(x)

parameters(x) <- value
}
\arguments{
\item{x}{an object from which to extract parameters, or in which to set them}

\item{value}{an object to assign as the parameters of \code{x}}
}
\description{
this documents the S3 generic functions \code{parameters} to
  extract or assign parameter values from objects in the \code{pop} package.
  Methods of this function are defined for various object classes, including
  \code{transfun}, \code{transition} and \code{dynamic} objects.
}
\details{
each class-specific method will return parameters in a slightly
  different structure, and will require \code{value} to be provided in a
  different format (though the structures returned and required will
  generally be the same for all classes. See the helpfile for each class for
  the specific details and examples.
}

