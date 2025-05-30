class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details)
    @name = name
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end
end

# In case of positional arguments, order matters:
#   * senator = Candidate.new(53, "Mr. Smith", "Banker", "Kentucky", "Fishing")
#   * senator.name #=> 53
#   * senator.age #=> "Mr. Smith"
#   * senator.occupation #=> "Banker"
#   * senator.hobby #=> "Kentucky"
#   * senator.birthplace #=> "Fishing"

info = {
  age: 53,
  hobby: "Fishing",
  birthplace: "Kentucky"
}
senator = Candidate.new("Mr. Smith", info)

senator.name        #=> "Mr. Smith"
senator.age         #=> 53
senator.occupation  #=> nil (works even if :occupation is not passed in hash argument)
senator.hobby       #=> "Fishing"
senator.birthplace  #=> "Kentucky"
