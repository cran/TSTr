% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/newTree.R
\name{newTree}
\alias{newTree}
\title{Creates a new ternary search tree}
\usage{
newTree(input)
}
\arguments{
\item{input}{a filepath to read from or a character vector containing the strings.}
}
\value{
An object of class `list` and `tstTree`.
}
\description{
Creates a new ternary search tree containing the input words
}
\details{
Creates a new tree and adds the words contained in a vector or a file to the tree. 
Reports each 10000 words it has added to the tree and takes around 
30 sec. per 10k words on a 8Gb RAM computer. 
In addition, reports the total number of words and nodes when finished.
}
\examples{
fruitTree <- newTree(c("apple", "orange"))
fileConn <- file("XMIwords.txt")
writeLines(head(XMIwords,100), fileConn)
close(fileConn)
enTree <- newTree("XMIwords.txt")
}
\seealso{
\code{\link{addToTree}}
}

