% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/determine_distinct.R
\name{determine_distinct}
\alias{determine_distinct}
\title{Automatically determine primary key}
\usage{
determine_distinct(df, ...)
}
\arguments{
\item{df}{a data frame}

\item{...}{columns or a tidyselect specification}
}
\value{
none
}
\description{
Uses \code{confirm_distinct} in an iterative fashion to determine the primary keys.
}
\details{
The goal of this function is to automatically determine which columns uniquely identify the rows of a dataframe.
The output is a printed description of the combination of columns that form unique identifiers at each level.
At level 1, the function tests if individual columns are primary keys
At level 2, the function tests n C 2 combinations of columns to see if they form primary keys.
The final level is testing all columns at once.
\itemize{
\item For completely unique columns, they are recorded in level 1, but then dropped from the data frame to facilitate
the determination of multi-column primary keys.
\item If the dataset contains duplicated rows, they are eliminated before proceeding.
}
}
