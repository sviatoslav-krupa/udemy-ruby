class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace

  def initialize(name:, age:, occupation: "Candidate", hobby: "Running for office", birthplace: "USA")
    @name = name
    @age = age
    @occupation = occupation
    @hobby = hobby
    @birthplace = birthplace
  end
end

senator = Candidate.new(
  name: "Mr. Smith",
  age: 53,
  occupation: "Banker",
  hobby: "Fishing",
  birthplace: "Canada"
)

senator.name #=> "Mr. Smith"
senator.age #=> 53
senator.occupation #=> "Banker"
senator.hobby #=> "Fishing"
senator.birthplace #=> "Canada"

# Edge case:
faulty_senator = Candidate.new(
  name: "Mr. Smith",
  age: 53,
  occupation: "Banker",
  hobby: "Fishing",
  birthplac: "Canada" # typo in keyword argument name
) #=> unknown keyword: :birthplac (ArgumentError)
