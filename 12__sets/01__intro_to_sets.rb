# Notes:
#   * Set is an unordered data structure that guarantees the uniqueness of its values
#   * Sets solve the problem of duplication
#   * Ruby 3.2 autoloads Set class when code uses it; in earlier versions, we need to require "set" file

# Source code:
#   * https://github.com/ruby/ruby/blob/master/lib/set.rb

require "set"

seasons = Set.new(%w[Fall Winter Spring Summer])
seasons.length                     #=> 4
seasons[0]                         #=> undefined method '[]' for an instance of Set (NoMethodError)
seasons.include?("Winter")         #=> true
seasons.include?("winter")         #=> false
seasons.each { |season| p season } #=> #<Set: {"Fall", "Winter", "Spring", "Summer"}>
# OUTPUT:
#   "Fall"
#   "Winter"
#   "Spring"
#   "Summer"

# Edge cases:
one_more_seasons = Set.new(%w[Fall Winter Spring Summer Fall Winter])
one_more_seasons        #=> #<Set: {"Fall", "Winter", "Spring", "Summer"}> (no error, duplicated values were removed)
one_more_seasons.length #=> 4
one_more_seasons.each_with_index { |season, index| p "#{index} - #{season}" } #=> #<Set: {"Fall", "Winter", "Spring", "Summer"}>
# OUTPUT:
#   "0 - Fall"
#   "1 - Winter"
#   "2 - Spring"
#   "3 - Summer"
