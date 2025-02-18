# Create Hash and Extract Values from Hashes by their Keys

# Literal notation
# { key => value }
# => - hash rocket symbol, rocket operator

nfl_roaster = {
  "Tom Brady" => "New England Patriots",
  "Tony Romo" => "Dallas Cowboys",
  "Rob Gronkowski" => "New England Patriots"
}

nba_roaster = {
  "Cleveland Cavaliers" => ["Lebron James", "Kevin Love", "Kyrie Irving"],
  "Golden State Warriors" => ["Stephen Curry", "Klay Thompson", "Kevin Durant"]
}

nfl_roaster # => {"Tom Brady"=>"New England Patriots", "Tony Romo"=>"Dallas Cowboys", "Rob Gronkowski"=>"New England Patriots"}
nfl_roaster["Tom Brady"] # => "New England Patriots"
nfl_roaster["Tony Romo"] # => "Dallas Cowboys"

nba_roaster["Cleveland Cavaliers"] # => ["Lebron James", "Kevin Love", "Kyrie Irving"]
nba_roaster["Cleveland Cavaliers"][1] # => "Kevin Love"

# Edge case
nfl_roaster["Donald Duck"] # => nil
nfl_roaster["tom brady"] # => nil (case matters)
