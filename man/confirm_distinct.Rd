% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/confirm_distinct.R
\name{confirm_distinct}
\alias{confirm_distinct}
\title{Confirm Distinct}
\usage{
confirm_distinct(.data, ...)
}
\arguments{
\item{.data}{A dataframe}

\item{...}{(ID) columns}
}
\value{
a Logical value invisibly with description printed to console
}
\description{
Confirm whether the rows of a data frame can be uniquely identified by the keys in the selected columns.
Also reports whether the dataframe has duplicates. If so, it is best to remove duplicates and re-run the function.
}
\examples{
iris \%>\% confirm_distinct(Species, Sepal.Width)
}
