% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample.R
\name{sample}
\alias{sample}
\alias{sample_affiliation}
\title{Sample networks according to certain probabilities}
\usage{
sample_affiliation(n, p, m)
}
\arguments{
\item{n}{Integer vector of length 2. 
The first number is the number of nodes in the first nodeset (rows),
and the second number becomes the number of nodes in the second nodeset (columns).}

\item{p}{Number of edges in the network over the number of edges possible}

\item{m}{Number of edges in the network}

\item{as}{What type of object to return.
One of "matrix", "tidygraph", "igraph".
By default, creates tidygraph's "tbl_graph" object.}
}
\description{
Sample networks according to certain probabilities
}
\details{
Creates a random two-mode network.
Will construct an affiliation matrix,
with a certain probability of a tie.
}
\examples{
sample_affiliation(c(10, 12), 0.25) \%>\% ggraph::ggraph() +
ggraph::geom_edge_fan(ggplot2::aes(alpha = stat(index)), show.legend = FALSE) +
ggraph::geom_node_point(ggplot2::aes(size = 5))
}
\seealso{
Other creation: 
\code{\link{create}}
}
\concept{creation}
