class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end
end

# The order doesn't mater - we're passing a hash/
# We can omit `{}` if the hash is last argument.
senator = Candidate.new(
  hobby: "Fishing",
  name: "Mr. Smith",
  age: 53,
  birthplac: "Kentucky" #=> a typo
)

senator.name #=> "Mr. Smith"
senator.age #=> 53
senator.occupation #=> nil (no errors, just nil for non-existing key in a hash)
senator.hobby #=> "Fishing"
senator.birthplace #=> nil (again, no errors, juts nil value)
