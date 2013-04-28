team         <- c('Man City', 'Man Utd', 'Totenham', 'Arsenal', 'Chelsea', 'Newcastle', 'Liverpool', 'Stoke')
home_wins    <- c(14, 10, 10, 9, 8, 7, 4, 6)
home_draws   <- c(0, 1, 2, 2, 2, 4, 8, 4)
home_losses  <- c(0, 2, 1, 2, 3, 2, 1, 4)
away_wins    <- c(7, 9, 6, 6, 5, 5, 6, 4)
away_draws   <- c(3, 3, 3, 2, 5, 3, 1, 2)
away_losses  <- c(3, 1, 4, 6, 4, 5, 6, 7)
league_table <- data.frame(team, home_wins, home_draws, home_losses, away_wins, away_draws, away_losses)
print(league_table)
print(league_table[c('team', 'home_wins')])
league_table$team
league_table$team[league_table$home_wins > 8]
league_table$team[league_table$away_wins > league_table$home_wins]
with(league_table, team[away_wins > home_wins])

pts <- c(66, 61, 53, 49, 46, 43, 39, 36)
points <- data.frame(team, pts)
points

league <- merge(league_table, points, by='team')
with(league, league[order(-pts), ])
