#Read in global gender inequality data
library(sf)
library(tidyverse)
GGI <- read.csv(("/Users/xingyuzhao/Documents/T1/CASA0005 GIS/Workshops/Workshop 4/prac4/Homework/Gender Inequality Index (GII).csv"),
 sep = ",",na = "..",skip=5)

View (GGI)



#Join the global gender inequality index to spatial data of the World, creating a new column of difference in inequality between 2010 and 2019
  #难点是shp里的country名单不全，不能包含csv里的全部
World <- st_read ("/Users/xingyuzhao/Documents/T1/CASA0005 GIS/Workshops/Workshop 4/prac4/Homework/World_Countries__Generalized_.shp")

View (World)

install.packages(janitor)
library (janitor)
install.packages("countrycode") #把countryname改为countrycode的 package
library(countrycode)

GGIdiff <- GGI %>%
  #Resulting names are unique and consist only of the _ character, numbers, and letters
  clean_names()%>%
  select(country, x2019, x2010) %>%
  # the . here just means use the data already loaded
  mutate(diff= x2019 - x2010) %>% 
  #new column with normalised life expect
  slice(1:189,)%>%
  #创建column
  mutate(iso_code=countrycode (country, origin = 'country.name', destination = 'iso2c'))
  
View(GGIdiff)
GGIWorld <- World%>%
  clean_names()%>%
  merge(.,
        GGIdiff, 
        by.x="aff_iso", #老师的是by = c("aff_iso" = "iso_code")
        by.y="iso_code")

View(GGIWorld)

        
#Share it with the World on GitHub
Add you repository URL to the circulated spreadsheet