## ---- echo = FALSE, message = FALSE--------------------------------------
knitr::opts_chunk$set(collapse = T, comment = "#>")
options(TSTr.print_min = 4L, TSTr.print_max = 4L)
library(TSTr)

## ------------------------------------------------------------------------
# Create a tree with the names of the US states
states <- sample(state.name)
stateTree <- newTree(states)

str(stateTree)

## ------------------------------------------------------------------------
# Add some Canada regions to the previous stateTree
regions  <- c("Quebec", "Ontario", "Manitoba", "Saskatchewan", "Alberta", "British Columbia")
US.CanadaTree <- updateTree(stateTree, regions)

# Add one more region
US.CanadaTree <- addWord(US.CanadaTree, "Yukon")

# View the final dimensions of the tree
dimTree(US.CanadaTree)

## ------------------------------------------------------------------------
# Search a specific state
searchWord(US.CanadaTree, "Alabama")
searchWord(US.CanadaTree, "Baltimore")

# Complete strings: States and regions that begin with "A" and "Al"
completeWord(US.CanadaTree, "A")
completeWord(US.CanadaTree, "Al")

