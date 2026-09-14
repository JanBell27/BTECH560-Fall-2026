#Author: Bell, Date:9/11/2026, Purpose: Phylogenetics analysis

# Load the 4 libraries 

library(ape)
library(phangorn)
library(phytools)
library(geiger)

#Create some dummy string dataset

text.string<- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"
 
vert.tree<-read.tree(text=text.string)

# Plot the phylogenetic tree-Rooted plot

plot(vert.tree,no.margin=TRUE,edge.width=2)

# Regenerate the same plot using color "Red", and add title to the top stating "Rooted Phylogenetic Tree"

plot(vert.tree,no.margin=TRUE,edge.width=2,edge.color="red")

# Add title

title("Rooted Phylogenetic Tree")