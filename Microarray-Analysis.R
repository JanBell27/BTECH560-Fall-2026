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

Treatment_Mean <-rowMeans(Treatment)
Control_Mean <-rowMeans(Control)

#Fold change analysis for determining significant genes, Up-regulation and Down-regulation of genes 
#Fold changes can be peformed using subtraction or division 

Fold_Changes <- Treatment_Mean - Control_Mean

# Any fold change value >2 is an up-regulated genes and any fold change value <-2 is an down-regulated genes. Any gene between 2 and -2 is an insignificantly expressed gene

  100_g_at     1000_at     1001_at   1002_f_at   1003_s_at     1004_at 
 0.02004328 -0.37687887  0.31352888  0.23368661  0.07965329  0.08178445 






