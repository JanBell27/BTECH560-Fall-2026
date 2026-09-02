#Author: Bell, Date: 08/26/2026, Purpose:
Microarray analysis

library(affy)

# Set the working directory for R

setwd("C:/Users/Nessa/OneDrive/Desktop/")

# Read the Affymetrixs dataset in R

data <- ReadAffy()

#Load the affy package

library(affy)

# Set the working directory for R

setwd("C:/Users/Nessa/OneDrive/Desktop/")

# Read the Affymetrixs dataset in R

data <- ReadAffy()

# Plot the read dataset as a boxplot

boxplot(data)

#Preprocessing the microarray chips using Normalization

Normalizeddata<-rma(data)

# Boxplot the normalized dataset

Normalizeddata <-exprs(Normalizeddata)

boxplot(Normalizeddata)

#Assume first 2 chips are Cancer/Treatment type and the next 2 are Normal/Reference chips

Treatment <- Normalizeddata[,c(1,2)]
Control <- Normalizeddata[,c(3,4)]

# Taking averages on rows for Treatment and Control so we have 1 column for Treatment and 1 column for Control



#Fold change analysis for determining significant genes, Up-regulation and Down-regulation of genes 
#Fold changes can be peformed using subtraction and division 

Fold_Changes <- Treatment - Control







