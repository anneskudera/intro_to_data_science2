songs <- read.csv("~/Desktop/R/Stat87/fightsongs.csv")
View(songs)
library(tidyverse)
library(dplyr)

# Histogram of bpm
ggplot(data = songs,
       mapping = aes(x = bpm)) +
  geom_histogram(fill = 'orange', color = 'purple')
# Numerical summary of bpm
summary(songs$bpm)
songs %>%
  summarise(bpmavg = mean(bpm),
            bpmmed = median(bpm),
            bpmstd = sd(bpm),
            numsongs = n())

# Boxplot of bpm by conference
ggplot(data = songs,
       mapping = aes(x = conference, y = bpm, fill = conference)) +
  geom_boxplot()
# Numerical summary of bpm by conference
songs %>%
  group_by(conference) %>%
  summarise(bpmavg = mean(bpm),
            bpmmed = median(bpm),
            bpmstd = sd(bpm),
            numsongs = n())
