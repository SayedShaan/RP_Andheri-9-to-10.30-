# Load necessary libraries
library(ggplot2)
library(treemapify)

# Read the dataset
proglangs <- read.csv("https://raw.githubusercontent.com/selva86/datasets/master/proglanguages.csv")

# Create the treemap plot
treeMapPlot <- ggplot(proglangs, aes(area = value, fill = parent, label = id, subgroup = parent)) +
  geom_treemap() +
  geom_treemap_text(colour = "white", place = "centre", grow = TRUE) +
  scale_fill_brewer(palette = "Dark2") +
  theme_minimal()

# Print the plot
print(treeMapPlot)
