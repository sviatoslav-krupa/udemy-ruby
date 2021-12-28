# Create Hash and Extract Values from Hashes by their Keys
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482476#overview) is the link to the video.

# Literal notation
# => - rocket operator

nfl_roaster = {
  "Tom Brady" => "New England Patriots",
  "Tony Romo" => "Dallas Cowboys",
  "Rob Gronkowski" => "New England Patriots"
}

nba_roaster = {
  "Cleveland Cavaliers" => ["Lebron James", "Kevin Love", "Kyrie Irving"],
  "Golden State Warriors" => ["Stephen Curry", "Klay Thompson", "Kevin Durant"]
}

nfl_roaster #=> {"Tom Brady"=>"New England Patriots", "Tony Romo"=>"Dallas Cowboys", "Rob Gronkowski"=>"New England Patriots"}
nfl_roaster["Tom Brady"] #=> "New England Patriots"
nfl_roaster["Tony Romo"] #=> "Dallas Cowboys"

nba_roaster["Cleveland Cavaliers"] #=> ["Lebron James", "Kevin Love", "Kyrie Irving"]
nba_roaster["Cleveland Cavaliers"][1] #=> "Kevin Love"

# Edge case
nfl_roaster["Donald Duck"] #=> nil
nfl_roaster["tom brady"] #=> nil (case matters)
