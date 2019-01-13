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

#practice at home
Algeria <- gapminder[25:36, 1:6]
Algeria$newcol <- Algeria$pop*Algeria$gdpPercap
Algeria$newcol

Algeria
write.csv (Algeria, "data/algeria_data.csv")

#START SWC DAY 2
install.packages("tidyr")
library(ggplot2)
library(dplyr)
library(tidyr)
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()
install.packages("knitr")
library(knitr)

#Practice with scatter and line plots
plot (gapminder$gdpPercap, gapminder$lifeExp)
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point()
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, by=country, color=continent)) + geom_line()
ggplot(data=gapminder, aes(x=year, y=lifeExp, color=continent)) + geom_point()
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, by=country)) + geom_line(aes(color=continent))+geom_point(col="blue") #colors lines by continent according to gapminder dataset and colors points blue
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point(alpha = 0.5) + scale_x_log10() #alpha changes transparency of points, scale changes the x axis to a log scale
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point(alpha = 0.5) + scale_x_log10() +geom_smooth(method=lm) #geom_smooth(method_lm) adds trendlines with 95% CI to each continent cluster
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point(alpha = 0.5) + scale_x_log10() +geom_smooth(method=lm, size =1.5) #size changes the size of whatever the command is, e.g. points, lines

#Socrative practice question
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point (size =0.5) + scale_x_log10() + geom_smooth(method="lm")

#More practice
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point (aes(shape=continent), alpha=0.5, show.legend=FALSE) + scale_x_log10() + geom_smooth(method="lm", show.legend=FALSE) #show.lengend=FALSE takes away legend
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + 
  geom_point(size=2, aes(shape=continent)) + 
  scale_x_log10() +
  geom_smooth(method=lm) +
  scale_y_continuous(limits=c(0,100), breaks=seq(0,100, by=10)) #changes the y axis fomr 0 to 100 with breaks every 10
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + 
  geom_point(size=2, aes(shape=continent)) + 
  scale_x_log10() +
  geom_smooth(method=lm) +
  scale_y_continuous(limits=c(0,100), breaks=seq(0,100, by=10)) + 
  theme_bw() #put the black square around the plot and took out the background shading
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + 
  geom_point(size=2, aes(shape=continent)) + 
  scale_x_log10() +
  geom_smooth(method=lm) +
  scale_y_continuous(limits=c(0,100), breaks=seq(0,100, by=10)) + 
  theme_bw()+
  ggtitle("Effects of per-capita GDP on life expectancy") #adds title
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + 
  geom_point(alpha=0.5, size=2, aes(shape=continent)) + 
  scale_x_log10() +
  geom_smooth(method=lm) +
  scale_y_continuous(limits=c(0,100), breaks=seq(0,100, by=10)) + 
  theme_bw()+
  ggtitle("Effects of per-capita GDP on life expectancy")+
  xlab("GDP per capita ($)")+
  ylab("Life Expectancy (years)") #adds x and y labels with units in ()
ggsave(file="life_expectancy.pdf") #write this line IMMEDIATELY following the code for the graph and it will save to your project directory as whatever extension you put
ggsave(file="life_expectancy.png", width=20, height=20, units="cm") #can give specific dimensions you want the image to save as

#Making a boxplot
ggplot(data = gapminder, aes(x = continent, y = lifeExp))+
  geom_boxplot()+
  geom_jitter(alpha=0.5, color="tomato") #geom_jitter give distribution of points, while geom_point gives a stright line

#Making a violin plot
ggplot(data = gapminder, aes(x = continent, y = lifeExp, color=continent))+
  geom_violin()

#Saving a plot as an object
plot <- ggplot(data = gapminder, aes(x = continent, y = lifeExp))+
  geom_boxplot()
plot
plot + geom_point(alpha=0.5, color="tomato") #If you save a plot as an object, then you can add more things to it without having to reenter the code for the actual graph
plot+geom_jitter(alpha=0.5, color="tomato")

#Basic programming in R - Letting R make choices 
number <- 37
if (number >100) {
  print("greater than 100")
} else {
  print("less than or equal to 100")
}
#Other operators
#Less than <
#Equal to ==
#Not equal to !=

number <- -3
if(number >0) {
  print(1)
} else if (number<0) {
  print(-1)
} else {
  print(0)
}

number1
number2
if(number1 >=0 & number2>=0){
  print("both numbers are positive")
} else {
  print("at least one number was negative")
}
number1 <- -15
if(number1 >=0 & number2>=0){
  print("both numbers are positive")
} else {
  print("at least one number was negative")
}

#Loops - allow you to look at a lot of data by automating the process
numbers <- 1:10
for(number in numbers) {
  print(number)
}
for(i in 1:10) {
  print(i)
}
print(i) #i is the incriment variable, can be used to tell you what the last piece in the loop was

letter <- "z"
print(letter)
for(letter in c("a", "b", "c")) {
  print(letter)
}
print(letter)

numbers <- c(4, 8, 15, 16, 23, 42)
numbers
sum <- 0
for (number in numbers) {
  print(sum <- sum+number)
} 
sum

sum<-0
for(i in c(4,8,15,16,23,42)) {
  print(sum<-sum+i)
}
sum

numbers<-(1:10000)
running_sum<-0
for(number in numbers) {
  running_sum<-running_sum+number
}
print(running_sum)

#Functions - to store code you will want to use again
fahr_to_kelvin<-function(temp) {
  kelvin<-((temp-32)*(5/9))+273.15
  return(kelvin)
}
fahr_to_kelvin(32)
fahr_to_kelvin(212)

kelvin_to_celsius<-function(temp) {
  celsius<-temp-273.15
  return(celsius)
}
kelvin_to_celsius(0)
kelvin_to_celsius(545)

fahr_to_kelvin <- function(temp) {
  temp <- ((temp - 32) * (5 / 9)) + 273.15
  return(temp) #The "temp" inside the function acts independently from the "temp" set as 73
} 
temp <- 73
kelvin_temp <- fahr_to_kelvin(temp)
print(temp)

celsius_to_fahr<-function(temp) {
  fahr<-(temp*9/5)+32
  return(fahr)
}
celsius_to_fahr(0)
celsius_to_fahr(100)

install.packages(c("rmarkdown", "formatR"))
library(formatR)
library(rmarkdown)
