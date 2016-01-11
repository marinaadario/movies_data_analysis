file = file.choose()
data = read.csv(file)

#make new columns for each genre (1 = yes, 0 = no)

data$adjusted = as.numeric(gsub('\\$|,', '', data$adjusted))

qplot(x = data$adjusted, y = data$rank_in_year, data=data, geom="dotplot", fill=Genre_1, 
      main="Revenue and Rank in Year", xlab="Adjusted revenue", 
      ylab="Rank in Year")

qplot(x = data$imdb_rating, y = data$rank_in_year, data=data, geom="dotplot", fill=Genre_1, alpha=I(1), 
      main="IMDB Rating and Rank in Year", xlab="IMDB Rating", 
      ylab="Rank in Year")


data$action = 0
action = which(data$Genre_1 == 'Action')
action2 = which(data$Genre_2 == 'Action')
action3 = which(data$Genre_3 == 'Action')
data$action[action] = 1
data$action[action2] = 1
data$action[action3] = 1

data$adventure = 0
adventure = which(data$Genre_1 == 'Adventure')
adventure2 = which(data$Genre_2 == 'Adventure')
adventure3 = which(data$Genre_3 == 'Adventure')
data$adventure[adventure] = 1
data$adventure[adventure2] = 1
data$adventure[adventure3] = 1

data$animation = 0
animation = which(data$Genre_1 == 'Animation')
animation2 = which(data$Genre_2 == 'Animation')
animation3 = which(data$Genre_3 == 'Animation')
data$animation[animation] = 1
data$animation[animation2] = 1
data$animation[animation3] = 1

data$crime = 0
crime = which(data$Genre_1 == 'Crime')
crime2 = which(data$Genre_2 == 'Crime')
crime3 = which(data$Genre_3 == 'Crime')
data$crime[crime] = 1
data$crime[crime2] = 1
data$crime[crime3] = 1

data$drama = 0
drama = which(data$Genre_1 == 'Drama')
drama2 = which(data$Genre_2 == 'Drama')
drama3 = which(data$Genre_3 == 'Drama')
data$drama[drama] = 1
data$drama[drama2] = 1
data$drama[drama3] = 1

data$family = 0
family = which(data$Genre_1 == 'Family')
family2 = which(data$Genre_2 == 'Family')
family3 = which(data$Genre_3 == 'Family')
data$family[family] = 1
data$family[family2] = 1
data$family[family3] = 1

data$fantasy = 0
fantasy = which(data$Genre_1 == 'Fantasy')
fantasy2 = which(data$Genre_2 == 'Fantasy')
fantasy3 = which(data$Genre_3 == 'Fantasy')
data$fantasy[fantasy] = 1
data$fantasy[fantasy2] = 1
data$fantasy[fantasy3] = 1

data$history = 0
history = which(data$Genre_1 == 'History')
history2 = which(data$Genre_2 == 'History')
history3 = which(data$Genre_3 == 'History')
data$history[history] = 1
data$history[history2] = 1
data$history[history3] = 1

data$horror = 0
horror = which(data$Genre_1 == 'Horror')
horror2 = which(data$Genre_2 == 'Horror')
horror3 = which(data$Genre_3 == 'Horror')
data$horror[horror] = 1
data$horror[horror2] = 1
data$horror[horror3] = 1

data$musical = 0
music = which(data$Genre_1 == 'Music')
music2 = which(data$Genre_2 == 'Music')
music3 = which(data$Genre_3 == 'Music')
musical = which(data$Genre_1 == 'Musical')
musical2 = which(data$Genre_2 == 'Musical')
musical3 = which(data$Genre_3 == 'Musical')
data$musical[music] = 1
data$musical[music2] = 1
data$musical[music3] = 1
data$musical[musical] = 1
data$musical[musical2] = 1
data$musical[musical3] = 1

data$mystery = 0
mystery = which(data$Genre_1 == 'Mystery')
mystery2 = which(data$Genre_2 == 'Mystery')
mystery3 = which(data$Genre_3 == 'Mystery')
data$mystery[mystery] = 1
data$mystery[mystery2] = 1
data$mystery[mystery3] = 1

data$romance = 0
romance = which(data$Genre_1 == 'Romance')
romance2 = which(data$Genre_2 == 'Romance')
romance3 = which(data$Genre_3 == 'Romance')
data$romance[romance] = 1
data$romance[romance2] = 1
data$romance[romance3] = 1

data$scifi = 0
scifi = which(data$Genre_1 == 'Sci-Fi')
scifi2 = which(data$Genre_2 == 'Sci-Fi')
scifi3 = which(data$Genre_3 == 'Sci-Fi')
data$scifi[scifi] = 1
data$scifi[scifi2] = 1
data$scifi[scifi3] = 1

data$sport = 0
sport = which(data$Genre_1 == 'Sport')
sport2 = which(data$Genre_2 == 'Sport')
sport3 = which(data$Genre_3 == 'Sport')
data$sport[sport] = 1
data$sport[sport2] = 1
data$sport[sport3] = 1

data$thriller = 0
thriller = which(data$Genre_1 == 'Thriller')
thriller2 = which(data$Genre_2 == 'Thriller')
thriller3 = which(data$Genre_3 == 'Thriller')
data$thriller[thriller] = 1
data$thriller[thriller2] = 1
data$thriller[thriller3] = 1

data$war = 0
war = which(data$Genre_1 == 'War')
war2 = which(data$Genre_2 == 'War')
war3 = which(data$Genre_3 == 'War')
data$war[war] = 1
data$war[war2] = 1
data$war[war3] = 1

data$western = 0
western = which(data$Genre_1 == 'Western')
western2 = which(data$Genre_2 == 'Western')
western3 = which(data$Genre_3 == 'Western')
data$western[western] = 1
data$western[western2] = 1
data$western[western3] = 1

data$nogenre = 0
data$nogenre2 = 0
data$nogenre3 = 0
nogenre = which(data$Genre_1 == '')
nogenre2 = which(data$Genre_2 == '')
nogenre3 = which(data$Genre_3 == '')
data$nogenre[nogenre] = 1
data$nogenre2[nogenre2] = 1
data$nogenre3[nogenre3] = 1

# delete the columns for genres, genre1, genre2, and genre3
# (the new columns with yes or no for each genre are more clear)

data <- data[,-8]
data <- data[,-8]
data <- data[,-8]
data <- data[,-8]

# now that it wont get rid of any movie that only has 1 or 2 genres,
# get rid of all NAs
newdata <- na.omit(data)

# get rid of 2015 inflation and worldwide gross,
# these are repetitive with adjusted and less clear
newdata <- newdata[,-6]
newdata <- newdata[,-14]

# get rid of dollar signs and commas from the adjusted column
newdata$adjusted = as.numeric(gsub('\\$|,', '', newdata$adjusted))

# get month of release from the date of release column
date = strsplit(as.character(newdata$release_date), "-")
datesplit = unlist(date)
month_of_release = 0
for(i in 0:397)
{
  num = 2 + 3*i
  month_of_release[i+1] = datesplit[num]
}

# make a new column for the month of release

newdata$month_of_release = 0
for(i in 1:398)
{
  if(month_of_release[i] == "Jan")
  {
    newdata$month_of_release[i] = 1
  }
  if(month_of_release[i] == "Feb")
  {
    newdata$month_of_release[i] = 2
  }
  if(month_of_release[i] == "Mar")
  {
    newdata$month_of_release[i] = 3
  }
  if(month_of_release[i] == "Apr")
  {
    newdata$month_of_release[i] = 4
  }
  if(month_of_release[i] == "May")
  {
    newdata$month_of_release[i] = 5
  }
  if(month_of_release[i] == "Jun")
  {
    newdata$month_of_release[i] = 6
  }
  if(month_of_release[i] == "Jul")
  {
    newdata$month_of_release[i] = 7
  }
  if(month_of_release[i] == "Aug")
  {
    newdata$month_of_release[i] = 8
  }
  if(month_of_release[i] == "Sep")
  {
    newdata$month_of_release[i] = 9
  }
  if(month_of_release[i] == "Oct")
  {
    newdata$month_of_release[i] = 10
  }
  if(month_of_release[i] == "Nov")
  {
    newdata$month_of_release[i] = 11
  }
  if(month_of_release[i] == "Dec")
  {
    newdata$month_of_release[i] = 12
  }  
}

# make a new rating column where G = 1, PG = 2, PG-13 = 3, and R = 4

for(i in 1:nrow(dataframe))
{
  if(newdata$rating[i] == "G")
  {
    newdata$ratingnumeric[i] = 1
  }
  if(newdata$rating[i] == "PG")
  {
    newdata$ratingnumeric[i] = 2
  }
  if(newdata$rating[i] == "PG-13")
  {
    newdata$ratingnumeric[i] = 3
  }
  if(newdata$rating[i] == "R")
  {
    newdata$ratingnumeric[i] = 4
  }
}

newdata$topfive = 0
for(i in 1:nrow(newdata))
{
  if(newdata$rank_in_year[i] < 5)
  {
    newdata$topfive[i] = 0
  }
  else
  {
    newdata$topfive[i] = 1
  }
}

# make new data frame to keep only the variables we want to use

dataframe = newdata


# get rid of variables we don't want to use (rank_in_year, poster url, rating, release date, studio, title)
dataframe <- dataframe[,-9]
dataframe <- dataframe[,-2]
dataframe <- dataframe[,-8]
dataframe <- dataframe[,-8]
dataframe <- dataframe[,-8]
dataframe <- dataframe[,-8]

# make a histogram of each numeric variable in order to check for normality,
# and transform the variable if necessary

for(i in 1:ncol(dataframe))
{
  hist(dataframe[,i])
}
  
hist(dataframe$rt_freshness)  # very left-skewed
hist(log(dataframe$rt_freshness))
for(i in 1:nrow(dataframe))
{
  dataframe$rt_freshness[i] = log(dataframe$rt_freshness[i])
}
  
hist(dataframe$adjusted)    # very left-skewed
hist(log(dataframe$adjusted))
for(i in 1:nrow(dataframe))
{
  dataframe$adjusted[i] = log(dataframe$adjusted[i])
}


# break into train and test sets

ind <- sample(2, nrow(dataframe), replace=TRUE, prob=c(0.67, 0.33))

dataframetrain <- dataframe[ind==1, 1:30]
dataframetest <- dataframe[ind==2, 1:30]
dataframetrainRanking <- dataframe$topfive[ind==1]
dataframetestRanking <- dataframe$topfive[ind==2]


for(i in 1:nrow(dataframetrain))
{
  if(dataframetrain[i,3] == Inf || dataframetrain[i,3] == (-Inf))
  {
    dataframetrain = dataframetrain[-i,]
    dataframetrainRanking = dataframetrainRanking[-i]
  }
}

for(i in 1:nrow(dataframetest))
{
  if(dataframetest[i,3] == Inf || dataframetest[i,3] == (-Inf))
  {
    dataframetest = dataframetest[-i,]
    dataframetestRanking = dataframetestRanking[-i]
  }
}

# pca

pca <- prcomp(dataframetrain[,1:30])
print(pca)
plot(pca)
summary(pca)

trainPCA = as.matrix(dataframetrain[1:30]) %*% pca$rotation
testPCA = as.matrix(dataframetest[1:30]) %*% pca$rotation

xtrain = trainPCA[,1:3]
xtest = testPCA[,1:3]

# svm

library(e1071)
model <- svm(formula = dataframetrainRanking ~ ., data = xtrain)
prediction <- round(predict(model, xtest))

results = matrix(0, length(prediction), 2)
for(i in 1:length(prediction))
{
  results[i,1] = prediction[i]
  results[i,2] = dataframe.testRanking[i]
}

numcorrect = 0
for(i in 1:length(prediction))
{
  if(prediction[i] == dataframe.testRanking[i])
  {
    numcorrect = numcorrect + 1 
  }
}

accuracy = numcorrect/length(prediction)


#randomforest

model <- randomForest(x = xtrain, y = dataframetrainRanking)
prediction <- round(predict(model, xtest))


numcorrect = 0
for(i in 1:length(prediction))
{
  if(prediction[i] == dataframe.testRanking[i])
  {
    numcorrect = numcorrect + 1 
  }
}

accuracy = numcorrect/length(prediction)

# knn
library(class)
prediction_knn <- knn(train = xtrain, test = xtest, cl = dataframetrainRanking, k=3)

numcorrect = 0
for(i in 1:length(prediction_knn))
{
  if(prediction_knn[i] == dataframetestRanking[i])
  {
    numcorrect = numcorrect + 1 
  }
}

accuracy = numcorrect/length(prediction_knn)
