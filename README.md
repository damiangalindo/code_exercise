## Weather/Football Code Exercise
#
> Developed By: Damian Galindo
#
## Part One: Weather Data
In weather.dat you’ll find daily weather data for Morristown, NJ for June 2002. Download this text file, then write a program to output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, the minimum the third column).

### Part Two: Soccer League Table
The file football.dat contains the results from the English Premier League for 2001/2. The columns labeled ‘F’ and ‘A’ contain the total number of goals scored for and against each team in that season (so Arsenal scored 79 goals against opponents, and had 36 goals scored against them). Write a program to print the name of the team with the smallest difference in ‘for’ and ‘against’ goals.

### Part Three: DRY Fusion
Take the two programs written previously and factor out as much common code as possible, leaving you with two smaller. programs and some kind of shared functionality.

#### How to run it to get the number of the day with the smallest temperature spread:
```sh
$ cd code_exercise
$ irb
$ > require_relative 'init.rb'
$ > w = Weather.new(file_path)
$ > w.smallest_temperature_spread
```

#### How to run it to get the team with the smallest goal difference:
```sh
$ cd code_exercise
$ irb
$ > require_relative 'init.rb'
$ > s = SoccerLeague.new(file_path)
$ > s.smallest_goal_difference
```

#### How to run the tests
```sh
$ cd code_exercise
$ ruby weather_test.rb
$ ruby soccer_league_test.rb
```
