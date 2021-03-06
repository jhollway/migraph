% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/constraint.R
\name{node_constraint}
\alias{node_constraint}
\title{Constraint for one- and two-mode networks}
\usage{
node_constraint(object, nodes = V(object), weights = NULL)
}
\arguments{
\item{object}{A matrix, igraph graph, or tidygraph object.}

\item{nodes}{The vertices for which the constraint will be calculated. 
Defaults to all vertices.}

\item{weights}{The weights of the edges. 
If this is NULL and there is a weight edge attribute this is used. 
If there is no such edge attribute all edges will have the same weight.}
}
\value{
A named vector (one-mode) or a list of two named vectors (`$nodes1`, `$nodes2`).
}
\description{
This function measures constraint for both one-mode and two-mode networks.
For one-mode networks, the function wraps the implementation of Ron Burt's measure
in `{igraph}`.
For two-mode networks, the function employs the extension outlined in Hollway et al. (2020).
}
\examples{
node_constraint(southern_women)
}
\references{
Hollway, James, Jean-Frédéric Morin, and Joost Pauwelyn. 2020. 
\href{https://link.springer.com/article/10.1007/s10784-019-09464-5}{"Structural conditions for novelty: the introduction of new environmental clauses to the trade regime complex."}
\emph{International Environmental Agreements: Politics, Law and Economics} 20 (1): 61–83.
}
\seealso{
Other one-mode measures: 
\code{\link{graph_clustering}()}

Other two-mode measures: 
\code{\link{centrality}},
\code{\link{centralization}},
\code{\link{graph_clustering}()},
\code{\link{node_smallworld}()}

Other node-level measures: 
\code{\link{centrality}},
\code{\link{node_smallworld}()}
}
\concept{node-level measures}
\concept{one-mode measures}
\concept{two-mode measures}
