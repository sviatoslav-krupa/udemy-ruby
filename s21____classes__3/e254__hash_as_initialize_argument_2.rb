# Hash as initialize Argument II
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482692#search) is the link to the video.

class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details = {}) # default argument
    defaults = { age: 35, occupation: "Candidate", hobby: "Running for office", birthplace: "USA" }
    # defaults.merge!(details) and use defaults[:<...>]

    @name = name
    @age = details.fetch(:age, defaults[:age])
    @occupation = details.fetch(:occupation, defaults[:occupation])
    @hobby = details.fetch(:hobby, defaults[:hobby])
    @birthplace = details.fetch(:birthplace, defaults[:birthplace])
  end
end

# senator = Candidate.new("Mr. Smith") #=> wrong number of arguments (given 1, expected 2) (ArgumentError) (without default argument)
# We can omit `{}` if the hash argument is placed in the end
senator = Candidate.new("Mr. Smith", hobby: "Horror movies", occupation: "Popcorn vendor")

senator.name #=> "Mr. Smith"
senator.age #=> 35
senator.occupation #=> "Popcorn vendor"
senator.hobby #=> "Horror movies"
senator.birthplace #=> "USA"
