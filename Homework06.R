# Homework06
# 1 March 2023
# MDM

structure(iris)
library(tidyverse)

# 2
iris1 <- filter(iris, 
                Sepal.Length>6, 
                Sepal.Width>2.5, 
                Species %in% c("versicolor", "virginica"))
iris1

# 3
iris2 <- select(iris1,
                Species,
                Sepal.Length,
                Sepal.Width)
iris2

# 4
iris3 <- arrange(iris2,
               by=desc(Sepal.Length))
head(iris3)

# 5
iris4 <- mutate(iris3,
                Sepal.Area=Sepal.Length*Sepal.Width)
iris4

# 6
iris5 <- summarize(iris4,
                   Mean.Length=mean(Sepal.Length),
                   Mean.Width=mean(Sepal.Width),
                   Sample.Size=nrow(iris4))
iris5

# 7
iris6 <- group_by(iris4, Species)
iris6 <- summarize(iris6,
                   Mean.Length=mean(Sepal.Length),
                   Mean.Width=mean(Sepal.Width),
                   Sample.Size=nrow(iris4))
iris6

# 8 pipe all this code into one thing

irisFinal <- iris %>%
  filter(Sepal.Length>6, 
         Sepal.Width>2.5, 
         Species %in% c("versicolor", "virginica"))%>%
  select(Species,
         Sepal.Length,
         Sepal.Width)%>%
  arrange(by=desc(Sepal.Length))%>%
  mutate(Sepal.Area=Sepal.Length*Sepal.Width)%>%
  group_by(Species)%>%
  summarize(Mean.Length=mean(Sepal.Length),
            Mean.Width=mean(Sepal.Width),
            Sample.Size=nrow(iris4))
irisFinal

# 9 lengthen the original data frame

iris

LongIris <- iris %>%
  pivot_longer(cols=Sepal.Length:Petal.Width,
               names_to = "Measure",
               values_to = "Value")
LongIris









