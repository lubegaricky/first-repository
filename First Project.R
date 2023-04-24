
die

die
 print(die)
print(paste('hello', 'world'))

print(paste('hello', 'world', sep = '~'))

paste0('hello', 'world')

paste0('Welcome','to','R')

print(paste('Welcome','to','R'))

x <- 10

print(x)

message <- "Welcome to R"

print(message)

y <- 10:31

print(y)

class(y)

class(message)

class(die)

## R has 5 basic/atomic classes of objects
#1. Numeric (real numbers)
#2. Character
#3. Integers
#4. Complex
#5. Logical/rational values

## Basic Arithmetic
# Addition, Subtraction, Multiplication, Division
# Exponent
18%%7 # Modulo - returns the remainder of the division

# Data types in R
num <- 5.7
num

typeof(num)
r <- 21
typeof(r) #Checks the data type of the variable

k <- 23L
k

Z <- TRUE
Z
p <- FALSE # Boolean: Part of the logical class
typeof(Z)

ch <- "Dear" # Text/String Values
class(ch)
typeof(ch)
length(ch)
z <- 4+3i
class(z)

print ("Welcome to R")

print(mtcars) #mtcars is an inbuilt data set

sprintf("%s is %f feet tall", "Bradley", 5.1) #Returns a character vector containing a formatted condition

help(sprintf)
# %s is for string
#%f is for float 

#Basic type of R object is a vector

# the C() function in creating vectors of objects (character vector and numeric vector), concatenating things together

# It also performs coercion of numerical data type into characters

# 2-dimensional objects are matrices

#Explicit and Implicit Coercion

# Attributes: All R objects have metadata 

# List: Vector is 1 dimensional - holds data of the same type. List is a generic vector that can take on different data types

# Matrix - a collection of data elements arranged in a 2-dimensional object rectangular layout

matrix(1:9, nrow = 4)

matrix(1:12,nrow = 4, byrow = TRUE)

cbind(1:4,1:4) # the command cbind() stands for column bind (compare with) rbind()

k <- matrix(1:6,byrow = TRUE, nrow = 2)
k

rbind(k, 6,9)
cbind(k, 10:11)

# naming matrix rows and columns
 row.names(k) <- c("row1", "row2")
k

colnames(k) <- c("col1","col2","col3") 
k

#dimnames

p <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)
p

cbind(k,p)

# Data frames

6 / (4 - 1) 
ls() # You can see which object names you have already used with the function ls

die + 1:4
die

die*die

die %*% die # Inner multiplication

die %o% die # Outer multiplication

factorial(3)

sample(x=die, size=2) # You can simulate a roll of the die with R’s sample function. sample takes two arguments: a vector named x and a number named size. sample will return size elements from the vector 

args(sample) #If you’re not sure which names to use with a function, you can look up the function’s arguments with args. To do this, place the name of the function in the parentheses behind args


#Data frame - used to store data in a table 
#Use the data.frame() function

name <- c("jackie","Mackie","Jenkins","Humphrey", "Podence")
name
class(name)
Age <- c(23,31,25,28,33)
Children <- c(FALSE, TRUE,TRUE,FALSE,TRUE)
dataframe <- data.frame(name,Age,Children)
dataframe

dataframe2 <- data.frame(Name=name,age=Age, Kids=Children)
dataframe2

str(dataframe) #Name is a factor instead of character

skimr::skim(dataframe)

data_frame <-data.frame(name,Age,Children,stringsAsFactors = FALSE)# use the data.frame function
data_frame
str(data_frame) #Here, name contains a character

#The subsetting Function - used to sort and extend dataframes in R
#We can subset dataframes (which are a mix of lists and matrices) by using the square brackets:Single [] from matrices
#We can use double [[]] brackets as for lists
#We can also use the $ sign
data_frame[3,2]
data_frame[3,"Age"]
data_frame[3,]
data_frame["Age"]
data_frame[c(3,5),c("Age",'Children')]
data_frame[2]
data_frame$Age #Returns a vector
data_frame[["Age"]] #Returns a vector/list
data_frame["Age"] #Returns a matrix/column vector

#The cbind() function
data_frame

height<- c(163,178,169,180,169)
data_frame$height<-height
data_frame
weight<-c(75,65,54,55,80)
cbind(data_frame,weight)
data_frame

#The rbind() function - creating a new vector cannot work as the new row will have different data types for a data frame
#We shall create a new data frame (with one single observation) and add it to our old frame

tom<- data.frame(name="Tom",Age=36,Children=TRUE,height=183,weight=89) #name the arguments
tom
df2<- cbind(data_frame,weight)
df2
df3<-rbind(df2,tom)
df3

#Sorting and Ordering your data frame
sort(df3$Age)
ranks <- order(df3$Age)
ranks
df3$Age
df3[ranks,]
df3[order(df3$Age,decreasing=TRUE),]

#Vectors in R >>> Use the c()funciton and pass in the values

#Create vectors in R
vec1<-c(10,20,40)
vec1
class(vec1)
typeof(vec1)

vec2<-c('a','b','c')
vec2
class(vec2)
typeof(vec2)

vec3<-c(TRUE,FALSE,FALSE)
vec3
class(vec3)
typeof(vec3)


#Print all the 3 vectors at once using a semicolon
vec1;vec2;vec3 #The semicolon is used to separate 3 or more variables

vec4<-c(10,"a",TRUE) #Coercion, converts all values to character type
vec4
class(vec4)
typeof(vec4)

vec5<-c(FALSE,20,40) #Coercion, converts all values to character type
vec5
class(vec5)
typeof(vec5)

vec6<-c(10,"A",40)
vec6
class(vec6)
typeof(vec6)

vec7<-c(1:20)
vec7
class(vec7)
typeof(vec7)

vec8<-seq(1,20)
vec8
class(vec8)
typeof(vec8)

vec9<-1:25
vec9
typeof(vec9)

#Create a vector with odd or even values in a range of numbers
odd_vec <- seq(1,20,2)
odd_vec

even_vec <-seq(2,20,2)
even_vec

#Vector with 10 odd values starting from 18
oddvec1 <- seq(from=19,by=2,length.out=10)
oddvec1

#Naming Vector using the names() function
temperature<-c(72,69,78,73,86,77,75)
temperature

names(temperature) <- c("Mon","Tue","Wed","Thur","Fri","Sat","Sun")
temperature

#Another way to name your vectors
days <-c("Mon","Tue","Wed","Thur","Fri","Sat","Sun")
temp1 <-c(12,24,21,23,34,25,23)
names(temp1) <- days
temp1

price <- seq(100,220,20)
names(price) <-paste0("p", 1:7)
price

#Vector Operations
#Addition, subtraction, Multiplication and division
#Using basic maths functions with vectors
vec1
sum(vec1) #adds the values in a vector
sd(vec1) #computes the standard deviation of the vector values
var(vec1)#computes the variance of the vector values  
prod(vec1)
max(vec1)
min(vec1)

#Comparing vectors using comparison operators
v1 <- c(19,12,45)
v2 <- c(19,22,31)

v1<v2
v1>v2
v1==v2
v1!=v2

v2>25

#Vector Slicing and Indexing
price_2 <- seq(550,670,20)
names(price_2) <- paste0("p",1:7)
price_2

#1 Using index positions
price_2[3]
price_2[3:4]
price_2[c(1,4)]
price_2[c(2,6)]

#2 Indexing with names
price_2[c("p3")]
price_2[c("p3","p4","p7")]
price_2["p3"]

#Using logical positions
price_2[c(T,F,T,T,F,F,F)] #REVISIT THIS!!!
price_2[c(T,F)]

#Using exclude position method
price_2[-2]
price_2[c(-2,-5)]

#Using the comparison operator
price_2[price_2>600]

filter <- price_2>600
price_2[filter]

#Handling NA values in vectors
order_detail1 <-c(10,20,30,NA,50,60)
order_detail1

names(order_detail1) <- c("Mon","Tue","Wed","Thur","Fri","Sat")
order_detail1

order_detail1+5 #operation is done to all the values of the vector

new_order <- c(5,10)
order_detail1+new_order -> update_order
update_order

#Creating a subset of vectors
first_two <- order_detail1[1:2]
first_two
l <- length(order_detail1)
l

v_1 <- order_detail1[(l-1):l]
v_1

v_2 <- order_detail1[(l-1):2]
v_2

v_3 <- order_detail1[l:1]
v_3

v_4 <- order_detail1[(l-2):1]
v_4

# Extract all values below 30
order_detail1<30
order_detail1[order_detail1<30]

# To omit NA value in a vector
na.omit(order_detail1[order_detail1<30])

# To find order details that are multiples of 3
(order_detail1 %% 3)==0
order_detail1[(order_detail1 %% 3)==0]
na.omit(order_detail1[(order_detail1 %% 3)==0])

sum (order_detail1) #Returns NA because there is an NA value in the order detail vector

# Use na.rm to remove NA values
sum(order_detail1, na.rm = T)

mean(order_detail1, na.rm = T)
max(order_detail1, na.rm = T)
min(order_detail1, na.rm = T)
sd(order_detail1, na.rm = T)
sqrt(order_detail1, na.rm = T)

# -------Matrix in R------
# Use the matrix() function to create a matrix

V <- 20:30
V

matrix(V)
mat1 <- matrix(0,3,5)
mat1

mat2 <- matrix(1:9,3,3)
mat2

mat3 <- matrix(1:9, nrow = 3, byrow = TRUE)
mat3

mat4 <- matrix(1:9, byrow = TRUE)
mat4

# Creating matrix from vectors
stock1 <-c(450,452,456,469,455)
stock2 <-c(230,234,253,236,228)

Stocks <- c(stock1,stock2) #merge both vectors
Stocks
stock.matrix <- matrix(stocs, byrow =TRUE,nrow = 2)
stock.matrix

# Naming a matrix using colnames() and rownames()
days <- c("Mon","Tue","Wed","Thur","Fri")
st.names <-c('stock1','stock2')

colnames(stock.matrix) <-days
rownames(stock.matrix) <-st.names

# Functions assoxiated with matrix
nrow(mat3) #returns the number of rows
ncol(mat3) #returns the number of columns
dim(mat3) #returns the number of rows and columns
rownames(stock.matrix) #returns the row names
colnames(stock.matrix) #returns the column names
dimnames(stock.matrix) #returns the row and column names

# Arithmetic operations in Matrix
mat_1 <-matrix(1:50, byrow = TRUE, nrow = 6)
5*mat_1 #Matrix Multipication
5+mat_1 #Matrix Addition 
2/mat_1 #Returns reciprocal
mat_1/2 #Returns quotient
mat_1+mat_1
mat_1-mat_1
mat_1*mat_1

# Matrix operations 
colSums(stock.matrix) #Returns the sum for each column
rowsum(stock.matrix) #Returns the sum for each row
rowMeans(stock.matrix) #Returns the mean for each row

# Adding rows and columns to a matrix using rbind() and cbind() functions
stock3 <- c(150,159,147,163,154)
total_stock<- rbind(stock.matrix,stock3)
total_stock

avg <- rowMeans(total_stock)
avg

total_stock1 <- cbind(total_stock,avg)
total_stock1

# Matrix selection and indexing
student <-matrix(20,30,NA,70,22,28,36,80,24,26,32,76,32,45,NA,52, nrow = 4,ncol = 4,byrow = TRUE)
dimnames(student) <- list(c("John","Mathew","Samuel","Alice"), C("Physics","Chemistry","Biology","Maths"))
student

# Extraction of columns
student[,1]
student[,1:2]
student[,c(1,3)]

# Extraction of rows
student[1,]
student[1:2,]
student[c(1,3),]
student[2,2]
student[2,2:4]

student[3:4,2:3]
student[2:4,C(1,4)]

student["John",2:3] #Find John's score in Chemistry and Biology
student[c("John","Samuel"),4] #Find John's and Samuel's score in Maths
student[c("Samuel","Alice"),3:4] #Find Samuel's and Alice's score in Biology and Maths
mean(student[c("John"),],na.rm=T) #Find the average score of John

# Find the average score and the total score of all students
apply(student,1,mean,na.rm=T) #Here, 1 stands for rows and 2 for columns
help(apply)

apply(student,1,sum,na.rm=T)

passing_score <-c(25,25,25,70)
passing_score

pass <-(student[c("Alice"),]>passing_score) #find how many subjects Alice passed
pass
sum(pass,na.rm = T)

pass1 <-(student[c("Samuel"),]>passing_score) #find how many subjects Samuel passed
pass1

sum(pass1,na.rm = T)


# -----------Dataframes in R-----------
#Checklist of pre-loaded datasets

data()
data(AirPassengers)
head(AirPassengers)
data(iris)
head(iris)
View(iris)
View(state.x77)
View(USPersonalExpenditure)
tail(USPersonalExpenditure)

summary(iris) # Check the statistical summary of a data set
str(iris) #check the stricture of a data set

# Using the data.frame() function
days <- c('Mon','Tue','Wed','Thur','Fri')
temp <- c(25.6,30.1,45.0,37.3,41.2)
rain <- c(TRUE,TRUE,FALSE,FALSE,TRUE)

dataf1 <-data.frame(days,temp,rain)
dataf1
summary(dataf1)
str(dataf1)

#dataframe indexing
dataf1[1,] #Extracts 1st row
dataf1[,2] #Extracts 2nd row

#Selecting using column names
dataf1[,"temp"] #Extracts all the temperature values
dataf1[2:4,c("days","temp")] #Extracts the 2nd,3rd and 4th row for days and temperature

# Use the dollar sign to obtain vales of a particular column
dataf1$days
dataf1$rain

# Using the bracket notation
dataf1['rain']
dataf1['temp']

# Filtering data frames using the subset function
subset(dataf1,subset=rain==TRUE) #Returns all columns where it rained
subset(dataf1,subset=temp>25) #Returns all columns where the temperature >25

# Sorting data frames using the order function
sorted.temp <-order(dataf1['temp'])
dataf1[sorted.temp,] #Returns all temperature with temperature arranged in ascending order

desc.temp <- order(-dataf1['temp']) #Returns all temperature with temperature arranged in descending order
dataf1[desc.temp,]

# Merging Data frames
authors <- data.frame(surname = I(c("Tukey"),"Venables","Tierney","Ripley","McNeil")),
nationality = c("US","Australia","US","UK,","Australia"),
deceased = c("yes",rep("no",4))

authors

books <- data.frame(
  name = I(c("Tukey"),"Venables","Tierney","Ripley","Ripley","McNeil","R Core")),
title = c("Explanatory Data ANalysis","Mordern Applied Statistics","LISP-STAT","Spatial Statistics",
          "Stochastic Simulation","Interactive Data Analysis","An Introduction to R"),
other.author = c(NA, "RIpley", NA,NA,NA,NA, "Venables & Smith"))

authors
books

(ml <- merge(authors, books, by.x = "surname", by.y ="name"))

# Example to Manipulate a data frame
salesreport <- data.frame(Id=101:110,
                          Product = c("A","B"),
                          Unitprice = as.factor(runif(10,100,200)),
                          Qty = as.integer(runif(10,10,20)))
salesreport

# 1. Transpose a dataframe
transpose.salesreport <-t(salesreport)
View(transpose.salesreport)
head(transpose.salesreport)

 # 2. Sorting a dataframe
salesreport[order(salesreport$unitprice),]
salesreport[order(salesreport$Unitprice, descreasing = T),]
salesreport[order(salesreport$Product,-salesreport$Unitprice),]

# 3. Subsetting a data frame
subset.ProductA <-subset(salesreport,Product=="A")
subset.ProductA

# Extract the rows for which the Product is "A" and Unitprice is >150
subset.salesreport <- subset(salesreport,Product=="A"& Unitprice>150,c(1,4))
subset.salesreport

# 4. Merging of data frames

SetA <- subset(salesreport,Product=="A")
SetB <- subset(salesreport,Product=="B")
SetA
SetB
cbind(SetA,SetB)
rbind(SetA,SetB)

# 5. Aggregate Function
# Total quantity sold for each product
aggregate(salesreport$Qty,list(salesreport$Product,sum,na.rm=T))

# -----------Lists in R----------
list.1 <- list(x=c(10,20,30),
               y=c("a","b","c"),
               z=c(TRUE,FALSE))
list.1

list.2 <- list(vec=seq(1:10),
               mat=matrix(1:9,3,3),
               lis=list(a=10,b=20))
list.2

# Recursive Variable -> A variable that can store values of its own type
is.recursive(list.2)

# Indexing of Lists
list.2[2] #By Index
list.2$mat #By dollar notation
list.2['vec'] #By name
list.2$lis[2] #Third Element, 2nd value

length(list.2)
class(list.2)

# Conversion of vectors to lists
price <-c(10,20,30)
pricelist <-as.list(price)
pricelist
price

# Conversion of list to vector
newprice <-unlist(pricelist)
newprice

# Use dim function to convert vectors to matrix
price_1 <-c(10,20,30)
dim(price_1) <-c(2,2)
price_1

# --------Basic Types of Functions-----
n1 <-10
class(n1)
typeof(n1)

n2 <- 10.5
class(n2)
typeof(n2)

is.numeric(n1) #Returns True if the given value is numeric else, False
is.numeric(n2)

I1 <-as.integer(10)
I1

I2 <-as.integer(10.23)
I2

I3 <- as.integer("10")
class(I1)
class(I2)
class(I3)

is.numeric(I1)
is.integer(I1)

c1 <- "John"
C2 <- "Rob"
class(c1)
class(c2)
is.character(c1)
is.character(c2)

toupper(c1) #Converts to Uppercase
substr(c1,1,2) #Extracts sets of characters
name_1 <-paste(c1,c2)
name_1

name.1 <-paste0(c1,c2)
name.1

name <-paste(c1,c2.sep=',')
name

newname <- sub("Rob","Cena",name) #Replaces set of characters
newname

length(c1)
nchar(c1)

# Simple Functions, no inputs
hello_world <- function(){
  print('hello world in R')
}

hello_world()

# Functions with a single argument
hello_name <- function(){
  print(paste('hello',name))
}

hello_name('john')

# Function to add 2 numbers 
add_num <-function(num1,num2){
  print(num1+num2)
}

add_num(30,40)

# Add a vector to a number
add_num(c(10,20,30),5)

# Functions with default arguments
hello_name1 <- function(name='Ricky'){
  print(paste('Hello',name))
}

hello_name1()
hello_name1('Sam')
hello_name1('Jerry')

# Return the value from a function()
full_name <- function(name='Sachin',title='Tendulkar'){
  return(paste(name,' ',title))
}

full_name()

full.name <- full_name('Don','Bradman')
full.name()

# Built-in Functions
# Generate 1000 random values from a normal distribution of mean 0 and 1
normalDistr <-rnorm(1000,0,1)
mean(normalDistr)
hist(normalDistr)

# To get more information
?hist

# To get histogram with large number of interval breaks
hist(normalDistr, breaks=50)

# We can provide arguments to functions by position,
# We could do the above example without the breaks argument (but as a good example, we should provide names to arguments)
hist(normalDistr,50)

# Creating our own function - Functions can be written with or without arguments
# No argument
Say_hi <-function(){"Hi"}
Say_hi

# Function taking on an argument
Say.hi <- function(name){
  paste("Hi",name)
}

Say.hi("Victor")

# Functions with optional arguments
expovalue <- function(x,power=2){
  hist(x ^ power)
}

expovalue(normalDistr)

# Or
expovalue(normalDistr,power = 3)
expovalue(normalDistr,4)

# Using named arguments(and passing any other arguments)
expo.value <- function(x,power=2, ...){
  hist(x^power)
}

expo.value(normalDistr,power = 2, breaks = 50)

# Passing Logical arguments
expo_value <- function(x, exp=2, hist=FALSE, .....){
  if(hist==TRUE){
    hist(x^exp)
    x^exp
  } esle
}

expo_value(normalDistr)
expo_value(normalDistr,hist=TRUE)


# Scope of variable in a function
v <- "I'm a Global Variable"
stuff <- "I'm Global Stuff"

# ----------Continued-------
fun <- function(stuff){
  print(v)
  stuff <- 'Reassign stuff inside the function'
  print(stuff)
}

print(v)
print(stuff)
fun(stuff) #Reassignment only happens in the scope of function
print(stuff)

# Create a function to find the final amount to be paid by a customer after adding 20% tax to the purchased amount
amount <- function(x=100)
{
  t=x+x*(20/100)
  return(t)
}

amount(100)

#-------------------------

amount1 <- function(amt)
{
  if(amt>0) famt=amt+amt*(20/100)
  if(amt<=0) famt=amt
  return(famt)
}

amount1(100)
amount1(0)

# Check the argument and the body of the function
args(amount1)
body(amount1)

# Example to understand the scope
f1 <- function(x)
{
  y=10
  g1=function(x)
  {
    y+x*x
  }
  g1(x)
}

f1(10)

#---------------------

g2 <- function(x)
{
  y+(x*x)
}
f2 <- function(x)
{
  y=10
  g2(x)
}

f2(10) #f2 internally calls g2

#-------------

g2 <- function(x,y)
{
  y+(x*x)

 f2 <- function(X)
  {
    y=10
    g2(x,y)
}
}

f2(10)

# Example 1
status <- function(marks)
{
  result="Not Defined"
  if(marks>50) result="Pass"
  message("Your Result is"," ", result)
}

status(60)
status(30)

#Example 2
status <- function(age)
{
  ageGrp="Not Defined"
  Vote="Not Defined"
  if(age>=18)
  {
    ageGrp="Adult"
    Vote="Yes"
  }
  message("Your age group is", " ", ageGrp)
  message("Voting Status is", " ",  Vote)
}

status(13)
status(28)
status(17.9)
status(17.9999999999)
status(18.03)

#Example to convert a name into uppercase

status <- function(name)
{
  len <- nchar(name)
  if(len>5) name=toupper(name)
  message("User given name is ", name)
}

status("Stuart")
status("Hugh")

#Example to calculate Bonus
get_bonus <- function(salary,exp)
{
  if(exp>5)
  {
    bonus_per=10
  }else
  {
    bonus_per=5
  }
  bonus=salary*(bonus_per/100)
  return(bonus)
}

get_bonus(25000,6)
get_bonus(25000,3)

#Example for multiple conditions & multiple actions
get_group <- function(age)
{
  if(age>0)
  {              #-------------nested If----
    if(age<18)
    {
      ageGrp="KIDS"
    }else if(age<60)
    {
      ageGrp="ADULT"
    }else
    {
      ageGrp="SENIOR"
    }
  }else
  {
    ageGrp="Not Defined"
    message("Wrong Age")
  }
  message("your age group is ", ageGrp)
}

get_group(10)
get_group(40)
get_group(65)
get_group(-11)

# ------------Using the Switch function-------------
# Returns value matched with the first argument
# First argument should be a character

# Example to return hra amount based on cities, house rent allowance
HRA <- function(city)
{
  hra_amt <- switch(toupper(city),
                    BLR=7500,
                    MUM=1000,
                    DEL=8000,
                    CHN=7500,
                    5000
                    )
  return(hra_amt)
}

HRA("BLR")
HRA("PUNE")
HRA("blr")

# Example to return the Salary band
salary_range <- function(band)
{
  range <- switch (band,
                   L1="10000-15000",
                   L2="15000-25000",
                   L3="25000-40000"
  )
  return(range)
}

salary_range("L1")
salary_range("B1")

# ---------------Using Repeat in R------------
time <- 15
repeat
{
  message("Hello, Welcome to this R practice session")
  if(time>=20) break
  time=time+1
}

#R function to find the square of any user given number
# If the square value<100, then increment the user value by 1 and find the square again.
# Repeat this step till the square exceeds 100

sqr <- function(n)
{
  repeat
  {
    square=n*n
    message("The square is ", square)
    if(square>=100) break
    n=n+1
  }
  return(n)
}

sqr(6)
args(sqr)
body(sqr)
sqr(2)

# R function to find the balance in a bank account after n years if I have deposited x amount in the beginning. 
# The bank gives interest at a rate of 8% p.a.

get_finalbal <- function(amt,year,rate)
{
  for(i in 1:year) #the for loop
  {
    interest=round(amt*rate/100,2)
    finalamt=amt+interest
    message(" Year= ",i ,", amt= ",amt,", Interest= ",interest," & final amount= ",finalamt)
    amt=finalamt
  }
  return(finalamt)
}

get_finalbal(5000,5,8)
get_finalbal(10000,10,5)

# R function to find the total number of years required to raise $8000 if the user deposits $550 per month.
req_years <- function(amount=550)
{
  famt=0;month=0
  while(famt<=8000)
  {
    month=month+1
    famt=famt+amount
    message("Month= ",month," & the final amount=",famt)
  }
  year=month/12
  return(year)
}

req_years()
req_years(750)

# ---------------#Built-in Functions---------------
testnums <- seq(0,50,by=2) #---- the sequence function
testnums
class(testnums)
typeof(testnums)

v <- c(testnums)
v
sort(v) #---------the sort function
sort(v,decreasing = TRUE)

v2 <- c(testnums)
rev(v2) #-----the reverse function

v3 <- c(99,2,3,78,5,100,4)
rev(v3)

v4 <- append(v2,v3)
v4

text <- "R is a Programming Language for DS"
grep('language',text)
grep('Language',text)


# ------------Factors in R--------------
bloodgrp <- c("B","AB","O","A","O","O","A","B")
bloodgrp
bloodgrp_factor <- factor(bloodgrp)
bloodgrp_factor
str(bloodgrp_factor)

blood_factor2 <- factor(bloodgrp, levels = c("O","A","B","AB"))
blood_factor2
str(blood_factor2)
levels(bloodgrp_factor) <- c("BT_A","BT_AB","BT_B","BT_O")
bloodgrp_factor
factor(bloodgrp,labels =c("BT_A","BT_AB","BT_B","BT_O"))

bloodgrp_factor[1]<bloodgrp_factor[2]

dress_size <- c("M","L","S","S","L","M","L","M")
dress_size_factor <- factor(dress_size, ordered = TRUE, levels = c("S","M","L"))
dress_size_factor
dress_size_factor[1]<dress_size_factor[2]

Type <- c("s","m","l","s","l","m")
Type[3]>Type[4]
Type[1]>Type[2]
Type[2]>Type[3]

Type.factor <- factor(TRUE)
#default nominal factor

Type.factor

Type.factor2 <- factor(Type,ordered = TRUE)
#Factor created in ordinal
Type.factor2

Type.factor3 <- factor(Type,ordered = TRUE, levels =c("s","m","l"))
# Ordered factor with user given order
Type.factor3

Type.factor4 <- factor(Type,ordered = TRUE, levels= c("s","m","l"), labels = c("small","medium,","large"))
Type.factor4

Type <- c("Small","Tall","Tallest","Medium","Small",
         "Medium","Tallest","Tall","Small","Small")
Type
Type.factor5 <- factor(Type,ordered = TRUE, levels= c("Small","Medium","Tall","Tallest"))
Type.factor5
Type.factor5[1]>Type.factor5[4]

as.