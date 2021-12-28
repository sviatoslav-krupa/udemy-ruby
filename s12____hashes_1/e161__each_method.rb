# The .each Method on a Hash
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482488#overview) is the link to the video.

capitals = {
  alabama: "Montgomery",
  alaska: "Juneau",
  arizona: "Phoenix",
  arkansas: "Little Rock"
}

capitals.each do |key, value| # Ruby technically keeps ordering from v1.9
  p "#{key} - #{value}"
end #=> {:alabama=>"Montgomery", :alaska=>"Juneau", :arizona=>"Phoenix", :arkansas=>"Little Rock"}
=begin
  "alabama - Montgomery"
  "alaska - Juneau"
  "arizona - Phoenix"
  "arkansas - Little Rock"
=end

capitals.each_pair do |key, value|
  p "#{key} - #{value}"
end
=begin
  "alabama - Montgomery"
  "alaska - Juneau"
  "arizona - Phoenix"
  "arkansas - Little Rock"
=end

# Edge case
capitals.each do |item| # it iterates through each key-value pair and return it in `[key, value]` format
  p item
end
=begin
  [:alabama, "Montgomery"]
  [:alaska, "Juneau"]
  [:arizona, "Phoenix"]
  [:arkansas, "Little Rock"]
=end
