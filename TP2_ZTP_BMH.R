library(tidyverse)

#Load our dataset onto R
dataset=read.csv('weightlifting_721_workouts.csv')
head(dataset)
glimpse(dataset)
length(dataset)
summary(dataset)

#Check if there are any null values
colSums(is.na(dataset))
#There are no null entries


# Scatter plot between weight and reps
ggplot()+geom_point(aes(x=testing_set$Weight, y=testing_set$Reps), color='red')+xlab('Weight')+ylab('Reps')

#Pair plot with all the numercial variables
pairplot_data=dataset[ , c('Weight', 'Reps', 'Set.Order', 'Distance', 'Seconds')]
head(pairplot_data)
pairs(pairplot_data)

#Taking a random sample of data and creating a bar plot
barplot_data=sample_n(dataset, 15) 
barplot((barplot_data$Weight), (barplot_data$Reps), xlab='Weight', ylab='Reps')


#Scatter plot of Weight and Reps with the linear regression line
ggplot(dataset, aes(x = Weight, y = Reps)) +
  geom_point() +
  stat_smooth(method = "lm")

#Box plot of Weight
boxplot(dataset$Weight, xlab=('Weight'),horizontal=TRUE, color='blue') 





        