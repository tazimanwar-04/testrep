library(datasets)

#Load data

data(mtcars)


# view first 5 rows

head(mtcars, 5)

?mtcars

#load ggplot package

library(ggplot2)

#load ggplot package
library(ggplot2)

#create a scatterplot of displacement (disp) and miles per gallon (mpg)

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

# Add title and change name of x and y axes

ggplot(aes(x=disp, y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x= "Displacement", y = "Miles per Gallon")

# make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

# create boxplot of the distribution for v-shaped and straight engine

ggplot(aes(x=vs, y=mpg), data=mtcars) + 
  geom_boxplot(alpha=0.3, color = "green") + ggtitle("v-shaped vs miles per gallon") + 
  labs(x ="v-shaped", y = "Miles per Gallon") + 
  scale_fill_manual(values = c("red", "green", "blue"))

ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.4)
