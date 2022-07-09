library(tidyverse)
library(rvest)
library(dplyr)


link = "https://www.imdb.com/list/ls063754375/"
page = read_html(link)
name = page %>% html_nodes(".lister-item-header a") %>% html_text()
name

yearr = page %>% html_nodes(".text-muted.unbold") %>% html_text()
yearr
View(year)
year = tail(yearr, 100)
year

data.frame(name, year)

Revenue = page %>% html_nodes(".mode-detail .list-description p") %>%  html_text()
Revenue

casting = page %>% html_nodes(".ratings-metascore~ .text-small:nth-child(6) , .text-small:nth-child(5)") %>%  html_text()
casting

Telugu_states = data.frame(name, year, Revenue, casting)

View(Telugu_states)

write.csv(Telugu_states, "Telugu_state.csv")

#-------------------------------------------------------------------------------------------------------------------------------------

rm(year, yearr, link, name, casting)
rm(page, Revenue)

link = "https://www.imdb.com/list/ls063689839/"
page = read_html(link)
name = page %>% html_nodes(".lister-item-header a") %>% html_text()
name

year = page %>% html_nodes(".text-muted.unbold") %>% html_text()
year
yearr = tail(year, 55)


Revenue =  page %>% html_nodes(".mode-detail .list-description p") %>% html_text()
Revenue

casting = page %>% html_nodes(".text-small:nth-child(5)") %>% html_text()
casting

Malayalam = data.frame(name, yearr, Revenue, casting)
View(Malayalam)

write.csv(Malayalam, "Malayalam.csv")

#------------------------------------------------------------------------------------------------------------------------------------------------

rm(year, yearr, link, name, casting)
rm(page, Revenue)


link = "https://www.imdb.com/list/ls063735794/"
page = read_html(link)
name = page %>%  html_nodes(".lister-item-header a") %>% html_text()
name

Revenue = page %>% html_nodes(".mode-detail .list-description p") %>% html_text()
Revenue

casting = page %>%  html_nodes(".text-small:nth-child(5)") %>% html_text()
casting

year = page %>%  html_nodes(".text-muted.unbold") %>% html_text()
year
yearr = tail(year, 95)
yearr

Tamil = data.frame(name, yearr, Revenue, casting)
view(Tamil)

write.csv(Tamil, "Tamil.csv")

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

rm(year, yearr, link, name, casting)
rm(page, Revenue)

link = "https://www.imdb.com/list/ls063689880/"
page = read_html(link)
name = page %>% html_nodes(".lister-item-header a") %>% html_text()
name

Revenue = page %>% html_nodes(".mode-detail .list-description p") %>% html_text()
Revenue

casting = page %>% html_nodes(".text-small:nth-child(5)") %>% html_text()
casting

year = page %>% html_nodes(".text-muted.unbold") %>% html_text()
year
yearr = tail(year, 43)

Kan_movies= data.frame(name, yearr, Revenue, casting)

View(Kan_movies)

write.csv(Kan_movies, "Kan_movies.csv")

