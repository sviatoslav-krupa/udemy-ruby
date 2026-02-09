# Notes:
#   * Literal notation: `{ key => value }`
#   * `=>` - hash rocket symbol, rocket operator
#   * .dig - extracts the nested value specified by the sequence of key objects by calling dig at each step, returning nil if any intermediate step is nil.

nfl_roaster = {
  "Tom Brady" => "New England Patriots",
  "Tony Romo" => "Dallas Cowboys",
  "Rob Gronkowski" => "New England Patriots"
}

nba_roaster = {
  "Cleveland Cavaliers" => ["Lebron James", "Kevin Love", "Kyrie Irving"],
  "Golden State Warriors" => ["Stephen Curry", "Klay Thompson", "Kevin Durant"]
}

nfl_roaster                           #=> {"Tom Brady"=>"New England Patriots", "Tony Romo"=>"Dallas Cowboys", "Rob Gronkowski"=>"New England Patriots"}
nfl_roaster["Tom Brady"]              #=> "New England Patriots"
nfl_roaster["Tony Romo"]              #=> "Dallas Cowboys"
nba_roaster["Cleveland Cavaliers"]    #=> ["Lebron James", "Kevin Love", "Kyrie Irving"]
nba_roaster["Cleveland Cavaliers"][1] #=> "Kevin Love"

# .dig
h = { foo: {bar: {baz: 1}}}

h.dig(:foo, :bar, :baz) #=> 1
h.dig(:foo, :zot, :xyz)  #=> nil (no errors for :zot)

g = { foo: [10, 11, 12] }
g.dig(:foo, 1)    #=> 11
g.dig(:foo, 1, 0) #=> TypeError: Integer does not have #dig method
g.dig(:foo, :bar) #=> TypeError: no implicit conversion of Symbol into Integer

# Edge cases:
nfl_roaster["Donald Duck"]  #=> nil
nfl_roaster["tom brady"]    #=> nil (case matters)
