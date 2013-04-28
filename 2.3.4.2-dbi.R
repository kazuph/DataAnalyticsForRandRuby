library(DBI)
library(RMySQL)
con <- dbConnect(MySQL(), host='localhost', dbname='epl', user='root', password='')
league <- dbGetQuery(con, 'select * from league')
dbDisconnect(con)
wins <- with(league, {
             home_wins <- HomeTeam[FTHG > FTAG]
             away_wins <- AwayTeam[FTHG > FTAG]
             sort(table(home_wins) + table(away_wins), decreasing=T)
})
print(data.frame(wins))
