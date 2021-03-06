% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{matrix_valid_external}
\alias{matrix_valid_external}
\title{Find records with valid external causes of injury icd-10-cm.}
\usage{
matrix_valid_external(data, diag_ecode_col)
}
\arguments{
\item{data}{input data}

\item{diag_ecode_col}{column indices}
}
\value{
valid_external, a binary variable indicating whether the record has (value = 1) a valid external cause of injury icd-10-cm code
}
\description{
Find records with valid external causes of injury icd-10-cm.
}
\examples{

library(dplyr)
library(purrr)
set.seed(5)
icd10cm_data150 \%>\%
matrix_valid_external(diag_ecode_col = c(2:6)) \%>\%
sample_n(10)
}
