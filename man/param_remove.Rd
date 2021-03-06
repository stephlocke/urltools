% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{param_remove}
\alias{param_remove}
\title{Remove key-value pairs from query strings}
\usage{
param_remove(urls, keys)
}
\arguments{
\item{urls}{a vector of URLs. These should be decoded with \code{url_decode} but don't
have to have been otherwise processed.}

\item{keys}{a vector of parameter keys to remove.}
}
\value{
the original URLs but with the key/value pairs specified by \code{keys} removed.
If the original URL is \code{NA}, \code{NA} will be returned; if a specified key is \code{NA},
nothing will be done with it.
}
\description{
URLs often have queries associated with them, particularly URLs for
APIs, that look like \code{?key=value&key=value&key=value}. \code{param_remove}
allows you to remove key/value pairs while leaving the rest of the URL intact.
}
\examples{
# Remove multiple parameters from a URL
param_remove(urls = "https://en.wikipedia.org/wiki/api.php?action=list&type=query&format=json",
            keys = c("action","format"))
}
\seealso{
\code{\link{param_set}} to modify values associated with keys, or \code{\link{param_get}}
to retrieve those values.
}

