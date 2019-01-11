53 + 23
# ()
# ^ **
# /
# *
# +
# -
# adds a comment to the code so you can annotate and the pound symbol gets R to ignore the line when you run the code
3+5*2
(3+5)*2
log10(10)
log(1)
exp(0.5)
x <- 1/40
x
x <- x+1
y <- x*2
mass <- 47.5
age <- 122 
mass <- mass*2.3 
age <- age-20
age

1:5
2^(1:5)
x <- 1:4
y <- 5:8
x+y

ls()
rm("x")
rm(y)
rm(list = ls())
ls()
#installing packages
install.packages("ggplot2")
install.packages("dplyr")
install.packages("gapminder")
library(ggplot2)
library(dplyr)
library(gapminder)
library(ggplot2)
library(dplyr)
#to learn about a package
vignette("dplyr")
#to creat a data frame
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))
cats
write.csv(cats, "data/feline_data.csv")
#to save data to a specific folder, foldername/filename.filetype
cats <- read.csv("data/feline_data.csv")
#to read in a dataframe, use read.csv and input foldername/filename.filetype
cats$weight
#to explore the dataframe, call certain variables by using tabname$varaiblename
cats$coat
cats$weight <- cats$weight*2.2
cats$weight
cats$weight+cats$coat
class(cats$weight)
class(cats$coat)

class(cats)
str(cats)
#to create a vector
num_vector <- c(1, 3, 5)
chr_vector <- c("a", "b", "c")
chr_vector2 <- c("d", "e", "f")
comb_vector <- c(chr_vector, chr_vector2)
comb_vector

num_vector2<-c(100, 10, 20)
num_vector+num_vector2

seq(10)
seq(from = 1, to = 10, by = 0.1)
#to give names to a vector
my_example <- 5:8
my_example
names(my_example) <- c("a", "b", "c", "d")
my_example
names(my_example)
my_vector <- 1:26
my_vector
my_vector2 <- my_vector*2
my_vector2
?letters
my_vector3 <- c(my_vector2, letters)
names(my_vector2) <- letters
my_vector2
names(my_vector2) <- LETTERS
my_vector2
#working with a real data frame, loading it into R
gapminder<-read.csv("data/gapminder_data.csv")
gapminder
#structure of the data frame
str(gapminder)
nrow(gapminder) #number of rows
ncol(gapminder) #number of columns
dim(gapminder) #dimensions, given as number of rows and columns
colnames(gapminder) #column names

#subsetting data - example
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c("a", "b", "c", "d", "e")
x
x[1] #gives the first value in the vector
x[3] #gives third value in the vector
x[c(1,3)] #gives both first and third value in the vector
x[1:4] #gives the first four elements of the vector
x[-2] #removes the second element from the vector
x[-(2:4)] #removes the second through fourth element of the vector

#subsetting data - practice dataset
head(gapminder) #gives first 6 rows
head(gapminder["pop"]) #subsets data to give first 6 values in the population column only
head(gapminder[5]) #subsets data to give first 6 values in the 5th column in the dataframe
gapminder[3, ] #gives the 3rd row only, with all columns - when in square braces the left side is rows and the right side is columns
gapminder[1:10, 5] #gives the value found in the 5th column for the first 10 rows in the data frame
gapminder[138, ] #gives the value for each column for the 138th row in the data frame
gapminder[1:6, c(2:3, 5:6)] #gives the values for columns 2, 3, 5 and 6 for the first 6 rows in the data frame
str(gapminder)
gapminder[1:6, c("pop", "year", "lifeExp", "gdpPercap")] #gives the same output, but the data is organized based on the order that you typed the column names
albania <- gapminder[13:24, 1:6] #assinging a subset of the data to an object
albania
Afghanistan <- gapminder[1:12, 1:6] #subsets Afghanistan data frame
Afghanistan
Afghanistan$newcol<-Afghanistan$pop*Afghanistan$gdpPercap #creates new column in the Afghanistan data frame by multiplying the pop column by the gdp column (MUST write Afghanistan$ before each column so it knows which data frame youre pulling from)
Afghanistan
write.csv(Afghanistan, "data/afghan_data.csv") #writes the afghanistan datframe into the data file as a csv under the name afghan_data
              