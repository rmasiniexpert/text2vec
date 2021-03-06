% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tokenizers.R
\name{tokenizers}
\alias{regexp_tokenizer}
\alias{tokenizers}
\alias{word_tokenizer}
\title{Tokenization functions, which performs string splitting}
\usage{
word_tokenizer(string)

regexp_tokenizer(string, pattern)
}
\arguments{
\item{string}{\code{character} vector}

\item{pattern}{\code{character} pattern symbol. Also can be one of \link{modifiers}.}
}
\value{
\code{list} of \code{character} vectors.
Each element of list containts vector of tokens.
}
\description{
simple wrappers around \code{stringi} and \code{stringr} packages functionality.
}
\details{
Uses \link{str_split} under the hood(which build on top of \code{stringi::stri_split}).
Actually just a wrapper for \code{str_split} which is very consistent, flexible and robust.
See \link{str_split} and \link{modifiers} for details.
}
\examples{
doc <- c("first  second", "bla, bla, blaa")
# split by words
word_tokenizer(doc)
#faster, but far less general - perform split by a fixed single whitespace symbol.
regexp_tokenizer(doc, pattern = stringr::fixed(" "))
}

