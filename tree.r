## install.packages("BiocManager")
BiocManager::install("remotes")
BiocManager::install("YuLab-SMU/treedataverse")
library(treedataverse)

## load tree data
tree = read.newick("aligned_file.phy_phyml_tree.txt",node.label = "support")

## make tree
ggtree(tree, layout = "rectangular", ladderize = TRUE) + geom_tiplab()

