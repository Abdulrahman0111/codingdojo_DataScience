
# Installing Packages
install.packages("tidyverse")

# Loading packages into our enviroment
library(tidyverse)

# Look at packages in our enviroment
search()


# To clear the console
cat('\014') # works in R studio
# control+L to clear console in the console

# >>>>>>>>>>>>>>>>>>>>Variables<<<<<<<<<<<<<<<<<<<<

# Notes: 
#   1- R is case sensitive 
#   2- convention is to start variable name with a letter or dot
#   3- Variable name can have: Letters-Digits-period-underscore
#   4- Note: the assignment operator in R is " <- " you can use "=" but it is not the standard
#   5- Variable name cannot have: spaces "like: my name" and it cannot start with a number
#   6- Variable name should be meaning full and represent the values it stores.


# Assignment operation
.intro <- "Hello World"
.intro

# Optional way to assign a variable
"Hello World" -> intro
intro

# Check type
typeof(intro)

my_greeting <- paste(intro, "My name is Mikio")
my_greeting

# Shift + Command+ Enter
# Run each line fo code from top to bottom


the_date <- paste("The date is", date())
the_date

# Accessing Help
?date()
help(date)

# Logical Operators
1<2
1>2
1<=2
1>=2
1==1
1!=3

# Multiple Conditions
(2+1 == 3) & (2+1 == 4) # using and (&)

(2+1 == 3) | (2+1 == 4) # using or (|)



# Math
1+1
2*2
3-3
4/2
4**2 # exponents
4^2 # exponents
5%%2 # modulo

# Inbuilt Functions
max(3,4,5)
min(3,6,8)
round(3.14, digits=1)

?round()

ceiling(9/2)
floor(4.5)

sum(5,6)

# Incrementing an object by one
total <- 0
total <- total + 1
total <- total +1
total

# Vectors 
# Note: vectors ---> contain objects of the same type. For example: all elements are strings
# Note: vectors are one dimensional matrices 
# Note: lists ---> contain objects of different types. For example: strings, double, complex...
# R index starts at 1
# Python index starts at 0

# Creating a vector
v_1 <- c(1,2,3,4,5)
v_1

v_2 <- c(1:15)
v_2

# Even strings can be used
v_3 <- c("apple", "oranges", "banana", "mango")
v_3

# Looking at the length of our vector
length(c(10,1,2,3))

seq(1,10, by=0.5) # creating a sequence stepping by 0.5

seq(1, by=0.5, length.out=10) # create a sequence by stepping by 0.5 and only returning 10 elements

?seq() # access help


# Indexing vectors
v_1[3]

v_3[1]

# Indexing for multiple elements within a range
v_4 <- c(1:100)
v_4[30:35]

# We want to exclude values from our vector
v_1[-5]

# Excluding using a range
v_1[c(-1:-4)]

# Including only certain index values
v_1[c(2,3)]

# Using logical operators with slicing
v_1[v_1>3]

# Casting as a string
v_1_string <- as.character(v_1)
v_1_string

# casting as an integer
v_1_int <- as.integer(v_1_string)
v_1_int

# List
ls <- list("iphone", "one plus", 100, c(1:5), list(1,2,3,"apple")) # a list can hold multiple data types
# indexing the 4th element in the list and the 2nd element in the vector
ls[[4]][2]

rawan_phone <- ls[[2]]
rawan_phone

##### Brief introduction to functions ####

# Returning a value without a return statement
add_one <- function(x){
  x+1
}
add_one(5)

# returning an object with our result
add_one_v2 <- function(x){
  answer <- x+1
}

answer_2 <- add_one_v2(5)
answer_2

add_one_v2(5)

# Explicitly writing a return statement
add_one_v3 <- function(x){
  answer <- x+1
  return(answer)
}

answer3 <- add_one_v3(10)
answer3

# Needed for the assignment today
?sample

#===================================================================================================================================================

# Different ways of loading data #

# Preloaded R datasets
library(datasets)

df <- HairEyeColor # load by assigning to an object

View(df) # view the data in a traditional format as a table

# pulling data from github use the raw data
df2 <- read.csv("https://raw.githubusercontent.com/mwaskom/seaborn-data/master/flights.csv")

# look at summary statistics
summary(df2)

head(df2) # look at first 6 rows
tail(df2) # look at bottom 6 rows

# Print your working directory in console
getwd()

# Loading data locally
df3 <- read.csv("/Users/mph/Downloads/new_tips.csv")
View(df3)

# Show us the columns
length(df3) # Thanks Ruba

# Return detailed information about your dataset (Thanks Ahmen)
str(df3)

# Look at data shape
dim(df3)

# Matrices #

# Creating our first matrix filled by cols
mat_1 <- matrix(1:9, nrow=3, ncol=3)
mat_1

# Creating a matrix filled by row
mat_1 <- matrix(1:9, nrow=3, ncol=3, byrow=FALSE)
mat_1

# Help docs for matrix
?matrix

# A matrix will fill values with the range if not enough elements are filled
mat_2 <- matrix(1:3, nrow=3, ncol=3)
mat_2

# Create a matrix with a single value
mat_4 <- matrix(1, nrow=3, ncol=3)
mat_4

# Creates a column vector
mat_5 <- matrix(1:9)
mat_5

# Add matrices together element wise
add_matrix <- mat_1 + mat_2
add_matrix

# Matrix multiplication
mat_1 * mat_2

# Calculate the determinant
det(mat_2)

# Solving linear systems using R 
# Find the value of x and y ----> x + y = 6  and -3x + y = 2

# Coefficients matrix
a_mat <- matrix(c(1,1,-3,1), nrow=2, ncol=2, byrow=TRUE)
a_mat

# Values matrix
b_mat <- matrix(c(6,2), nrow=2, ncol=1)
b_mat

# Solve for x and y
solve(a_mat, b_mat)

# Combining Vectors

v_1 <- 1:5
v_2 <- 6:10

# Column concat
new_mat <- cbind(v_1, v_2)
new_mat

# Row concat
new_mat <- rbind(v_1, v_2)
new_mat

# Pulling out a single value
new_mat[1,3]

# Pull all rows and one column
new_mat[,3]

# Select a range of columns (@ different ways)
new_mat[1:2,3:5] # Ahmeds Way Thanks
new_mat[,3:5]

# Select specific columns (We only want columns 3 and 5)
new_mat[, c(3,5)] # Thank Ruba
new_mat

# Select specific rows (We only want row 2)
new_mat[c(2),]

# Create a BMI dataframe
gender <- c("Male", "Female", "Male")
height <- c(195, 160, 180)
weight <- c(80, 75, 100)
age <- c(30, 25, 40)

# Create the dataframe object
bmi <- data.frame(gender, height, weight, age)

# View our data
View(bmi)

# Selecting a single values specifying rows and columns
bmi[3,2]

# We want all information contained in row 2
bmi[2,] # Thanks Ruba and Atheer
bmi[c(2),] # Thanks Zarah

# Selecting a single column
bmi["age"] # returns a column

# returns rows
bmi[,4] 
bmi$age # Thanks ahmed

# Filtering data based on a condition
bmi[bmi$gender == 'Male',]
bmi[bmi$age > 35,] # Thanks Buthaina, Amani, Raghad, Abdullah, Ahmed, and Zarah

# Combine the above conditions together
bmi[bmi$age>35 & bmi$gender == "Male",] # Thanks Zarah

# Adding a col to our dataframe
marital_status <- c("Married", "Single", "Complicated")
bmi$status <- marital_status

View(bmi)

# Adding columns using cbind
employed <- c("Yes", "Yes", "No")
bmi <- cbind(bmi, employed) # Thanks Zarah and Ahmed
View(bmi)

# Adding a new row using
new_row <- c("Female", 170, 65, 20, "Single", "Yes")

rbind(bmi, new_row) # Thanks Amani

bmi[4,] <- new_row

View(bmi)

# Ordering our dataframe
ranks <- order(bmi$age)
ranks # outputs the ranks of each row by age

bmi[ranks,]

# We can also order using decreasing in alphabetical order
bmi[order(bmi$status, decreasing=FALSE),]

# We can order by age (Numerically)
bmi[order(bmi$age, decreasing=TRUE),]

# View help docs
?order

# Look at top 6 rows
head(iris)

# Summary stats
summary(iris)

# Simple plotting of data
plot(iris)



#===================================================================================================================================================

x <- 10

# Create a simple if else statement for even and odd numbers
if (x %% 2 == 0) {
  sprintf("%d is an even number", x)
} else {
  sprintf("%d is an odd number", x)
}

# IF-ELSE statement to detemine which print output should be shown depending on the survey score
survey_score <- 20

if (survey_score > 90) {
  print("Excellent, you did a great job")
} else if (survey_score > 80) {
  print("Good score!")
} else if (survey_score > 00){
  print("Average score")
} else {
  print("Take the survey again please")
}

# Now that we have the functionality that we want from our IF-ELSE statement
# Lets put it into a function by compying and pasting it into your function body ({})
survey_function <- function(survey_score) {
  
  if (survey_score > 90) {
    print("Excellent, you did a great job")
  } else if (survey_score > 80) {
    print("Good score!")
  } else if (survey_score > 70){
    print("Average score")
  } else {
    print("Take the survey again please")
  }
  
}

# Call our function
survey_function(90)

# While Loop
# Repeating until a condition is false (Thanks Mazen)
# execute the statement until condation be FALSE (Thanks Zarah)
# If we dont set a base case -> infinite while loops (Thanks Ahmed)

# To exit an infinate while loop press ctrl+c in console to stop it

count <- 0

while (count < 10){
  print("scanning files")
  count = count+1
  if (count == 10){
    print("scanning complete")
  }
}

# For loops
# i can be an Index (THanks Waad)
# i can be seen as a pointer (Thanks Buthaina)
# i is variable in basket vector (Thanks Ruba)
# I is a variable created to iterate in a list (Thanks Raghad)
# Running multiple lines of code on one line use a ; (Thanks Ruba)

# i will be the value of the last element accessed in the for loop when the loop ends
# i will be available to the global enviroment as the last element it was used for

basket <- c("Apple", "Orange", "Banana", "Mango"); 

# For lo0p using range
for (i in 1:length(basket)) { 
  if (basket[i] == "Mango") {
    print("Yes we have Mangos!")
  }else{
    print("No mangos, but another shipment on the way")
  }
}

for (i in 1:4) { 
  if (basket[i] == "Mango") {
    print("Yes we have Mangos!")
  }else{
    print("No mangos, but another shipment on the way")
  }
}


# Iterate over each item in the basket and pass through the conditional statement
for (i in basket) { 
  if (i == "Mango") {
    print("Yes we have Mangos!")
  }else{
    print("No mangos, but another shipment on the way")
  }
}

# i is assigned the last element used from basket
i

# Using a ifelse function (Thanks Ahmed)
# How does it have access to basket? 
?ifelse
ifelse(i == "Mango" , "yes we have mango" , "No mango")

for (i in basket) { 
  print(i) 
}

# Can you make this list comprehension work?
# to_list(print(i) for i in basket)

# Replicate elements of vectors and lists
?rep

typeof(rep(1:4, 2))

# Creates a repeated sequence of numbers
rep(1:4, 2)

# Specifying the pattern of replication using a vector
rep(1:4, c(2,1,2,1))

rep(1:4, each=2, len=4)


# Multi-conditional if-else statements
zodiac_signs <- function(sign) {
  zodiac <- c('leo','cancer', 'pisces','scorpio', 'taurus', 'sagittarius', 'gemini', 'virgo', 'libra', 'capricorn', 'aquarius', 'aries')
  # this is used to test whether the input provided by the user is in the list
  if (sign %in% zodiac) {
    if (sign == 'leo' | sign == 'pisces' ){
      print('Be be cautious... Someone is going to steal your wallet')
    } else if(sign == 'cancer' | sign == 'scorpio'){
      print('You are going to get a promotion today... Dress nicely, smile, and be nice to everyone')
    } else if(sign == 'taurus' | sign == 'gemini'){
      print('You are going to find the love of your life... Dress nicely, smile, and be nice to everyone')
    } else if(sign == 'sagittarius' | sign == 'virgo'){
      print('You are going to get sick today... Be careful')
    } else if(sign == 'libra' | sign == 'aquarius'){
      print('You are going to make an accident today... Dont drive, take Uber')
    } else{
      print('You need a break from work... Take the week off and try something new')
    } 
  }else{
    print(' Wrong sign or spelling... Enter something else')
  }
}

zodiac_signs("capricorn")


# Create a function that summarizes the survey results
# Number of customers for answered YES, NO , N/A
data <- c('yes', 'no','yes', 'yes', 'n/a', 'no', 'yes', 'yes')

survey_result <- function(input_vec){
  
  # Put counts outside the for loop or else the counts will reset after each loop (Thanks Waad, Raghad, Mazen)
  count_y <-0
  count_n <-0
  count_na <-0
  for (i in input_vec) {
    if (i == 'yes') {
      count_y = count_y +1
    } else if (i == 'no') {
      count_n = count_n +1
    } else {
      count_na = count_na +1
    }
  }
  
  paste('Yes counts is:', count_y, 'No counts is:', count_n, 'N/A counts is:', count_na)
  
}

survey_result(data)


#===================================================================================================================================================

library(datasets)

library(help = "datasets")

head(iris)

?plot


plot(iris$Species)
plot(iris$Petal.Length)
plot(iris$Species, iris$Petal.Width)
plot(iris$Petal.Length, iris$Petal.Width)
plot(iris)

# Plot with options
plot(
  iris$Petal.Length, 
  iris$Petal.Width,
  col = "green",
  pch = 19,
  main = "Iris: Petal Length vs. Petal Width",
  xlab = "Petal Length",
  ylab = "Petal Width"
  )

# Plot formulas
plot(cos, 0, 4*pi)
plot(exp, 1,5)
plot(dnorm, -3, +3)

# Clear Packages
detach("package:datasets", unload=TRUE)

# Clear plots
dev.off() # Only works if there is a plot

?mtcars # Look at the meta data
View(mtcars)

barplot(mtcars$cyl) # doesnt work, values are not grouped

# Need frequenct table to get desired results
cylinders <- table(mtcars$cyl)
cylinders

barplot(cylinders)

# Plots thin lines, undesireable
plot(cylinders)
plot(mtcars$cyl) # plots a scatter

# looka t data types in mtcars
str(mtcars)

counts <- table(mtcars$vs, mtcars$gear)
counts

barplot(
  counts,
  main = "Car Distribution by Gears and Engine Type",
  xlab = "Number of Gears",
  ylab = "Frequency",
  legend = rownames(counts),
  col = c("red", "blue")
  )

rownames(counts) # Returns the row names of our frequency table

barplot(
  counts,
  main = "Car Distribution by Gears and Engine Type",
  xlab = " Number of Gears",
  ylab = "Frequency",
  legend = rownames(counts),
  col = c("red", "blue"),
  beside = TRUE,
  horiz = TRUE,
  args.legend = list(x= "bottomleft")
  # Change the placement of your legend by using:
  # “bottomright”, “bottom”, “bottomleft”, “left”, “topleft”, “top”, 
  # “topright”, “right”, “center”
)

# Pie Charts

freq_survey <- c(15,8,2)
label_survey <- c("Exceeded Expectations", "Bad", "Your ok")

pie(
  freq_survey,
  labels = label_survey,
  main = "Weekly Survey Results",
  col = c("red", "green", "blue")
)

# Box plot
boxplot(mtcars$mpg)

# Subplots
?par
par(
  mfrow=c(3,1), 
  mar=c(1,1,1,1)) # used to fix the error "figure margins to large")

# Histograms for each species using options
hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Setosa",
     xlab = "",
     col = "red")

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Versicolor",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "blue")

# restore graphics parameter
par(mfrow=c(1,1))


# Wordclouds represent the word based on frequency (Thanks Zarah)
install.packages("wordcloud")
install.packages("tm")
library("wordcloud")
library("tm", "slam")
cloudy <- read.csv("/Users/mph/Downloads/Values.csv")
wordcloud(cloudy$Values,
          min.freq = 2,
          max.words = 20,
          random.order = FALSE,
          colors = "black",
)
View(cloudy)



# Dice Simulation

# Players roll 2 dice and the values are summed, the player with the highest value wins the round

# How many rounds
dice <- 1:20
n_rounds <- 10000
n_players <- 4

# variables to hold the current round leader and the highest score
current_round_best_score <- 0
current_round_leader <- 0

# winners variable that tracks winners for each round
winners <- rep(, n_rounds)
winners

# iterate through each round
for (i in 1:n_rounds){
  # iterate through each player (each palyer rolls)
  for  (p in 1:n_players){
    # roll and sum the coutcome
    outcome <- sample(dice, 2)
    outcome <- sum(outcome)
    
    # check if this player rolled more than the previsou leader
    if (outcome > current_round_best_score){
      current_round_best_score <- outcome
      current_round_leader <- p
    }
  }
  # save the winner of the round
  winners[i] <- current_round_leader
  
  # reset the best score and leader vars
  current_round_best_score <- 0
  current_round_leader <- 0
}

# visualize results
results <- table(winners)

#===================================================================================================================================================


# Data Souce: https://www.kaggle.com/mohammedhalosaimi/riyadh-coffee-shops

df <- read.csv("/Users/mph/Downloads/riyad_coffee_shops_clean.csv")
View(df)

head(df)

hist(df$rating)
plot(df$rating, df$numbers_of_rating)

?ifelse
df$overall <- ifelse(df$rating>=4, "good", "bad")
View(df)

# overall

df_good <- df[df$overall == "good",] # Thanks Mazen, Zarah, Raghad, Amani
  
df_bad <- df[df$overall == "bad",]

library("wordcloud")
library("tm", "slam")
wordcloud(df$reviews,
          min.freq = 2,
          max.words = 50,
          random.order = FALSE,
          colors = "black"
)

?wordcloud
# To view plots click "Zoom" instead of dragging the window bigger (Thanks Ruba)
# Create subplot area
par(mfrow=c(1,2), mar=c(1,1,1,1))

wordcloud(df_good$reviews,
          min.freq = 2,
          max.words = 50,
          random.order = FALSE,
          colors = "black"
)
title(main="Good Reviews")
wordcloud(df_bad$reviews,
          min.freq = 2,
          max.words = 50,
          random.order = FALSE,
          colors = "black"
)
title(main="Bad Reviews")  
  
# Reset graphical parameter and clear plots
par(mfrow=c(1,1)) 
dev.off()  

# Initial Guess Cosy  

# Create single string holding all keywords
corpus <- ""
for (x in 1:nrow(df)){
  corpus <- paste(corpus, df$key_words[x])
}

corpus

# View the data and see that it is not in the shape we want
View(data.frame(corpus))

# Use split to split the string on whitespace
corpus_split <- strsplit(corpus, c(" "))
corpus_split

# Remove commas from words
corpus_replace <- c()
for (x in corpus_split){
  x = gsub(",", "", x) # replace commas with nothing
  corpus_replace <- append(corpus_replace,x) # append values
}

# Cast as dataframe
df_split <- data.frame(corpus_replace)
View(df_split)

# Filter out none from the dataframe
df_split2 <- df_split[df_split$corpus_replace != "none",]
View(df_split2)
# Filter dataframe to remove the blank row
df_split <- data.frame(df_split2)[-1,]


counts <- table(df_split)

# Reorder to create a chart from alrgest to smallest
df_counts <- data.frame(counts)
df_counts_order <- df_counts[order(-df_counts$Freq),]
View(df_counts_order)

# Plot frequencies
barplot(
  counts,
  las=2
)

barplot(
  main = "Riyadh Coffee Shop Key Word Frequencies",
  df_counts_order$Freq,
  names.arg = as.vector(df_counts_order$df_split),
  las=2
)
  
?barplot  
