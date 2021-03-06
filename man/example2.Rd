% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{example2}
\alias{example2}
\title{example2}
\format{A data frame with six variables: \code{measurement}, \code{treatment},
  \code{animal}, \code{sex} \code{analyst}, and \code{device}.}
\usage{
example2
}
\description{
roughly 50% responders
}
\details{
20 animals, variable animal is a unique ID of 20 biological samples, variable sex is in the data but is not needed to clearly distinguish individuals

each of 3 analyst analyzed each animal using each of 3 devices, i.e., animals are crossed with analyst and with device
device uniquely identifies a single technical run across all analysts (chosing both, analyst and device, or only device as technical variable has the same result on normalization and model structure)

normalize: log-transform and substract mean
model structure: runs crossed with biological samples

irrespective of model choice (equal or different variance components): 11 individuals are classified as responders, 9 as non-responders
given log-transformation in the normalization step, there is no deviation from normality in the non-responder subgroup
}
\keyword{datasets}

