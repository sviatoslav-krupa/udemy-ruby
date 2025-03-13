start_of_year = Time.new(2022)
start_of_year #=> 2022-01-01 00:00:00 +0200

start_of_year + 60                  #=> 2022-01-01 00:01:00 +0200 (add 1 minute)
start_of_year + 180                 #=> 2022-01-01 00:03:00 +0200 (add 3 minutes)
start_of_year + (60 * 60)           #=> 2022-01-01 01:00:00 +0200 (add 1 hour)
start_of_year + (60 * 60 * 24)      #=> 2022-01-02 00:00:00 +0200 (add 1 day)
start_of_year + (60 * 60 * 24 * 45) #=> 2022-02-15 00:00:00 +0200 (add 45 days)
start_of_year - 180                 #=> 2021-12-31 23:57:00 +0200 (subtract 3 minutes)

def find_day_of_year_by_number(number)
  year_start = Time.new(2016)
  one_day_in_seconds = 60 * 60 * 24

  year_start + (one_day_in_seconds * number) - one_day_in_seconds
end
find_day_of_year_by_number(150) #=> 2016-05-29 01:00:00 +0300
find_day_of_year_by_number(25)  #=> 2016-01-25 00:00:00 +0200
find_day_of_year_by_number(366) #=> 2016-12-31 00:00:00 +0200
