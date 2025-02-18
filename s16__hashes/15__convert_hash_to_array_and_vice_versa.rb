# Convert Hash to Array and Vice Versa

spice_girls = {
  scary: "Melanie Brown",
  sporty: "Melanie Chisholm",
  baby: "Emma Bunton",
  ginger: "Geri Halliwell",
  posh: "Victoria Beckham",
}

# [:key, :value] format
spice_girls.to_a # => [[:scary, "Melanie Brown"], [:sporty, "Melanie Chisholm"], [:baby, "Emma Bunton"], [:ginger, "Geri Halliwell"], [:posh, "Victoria Beckham"]]


power_rangers = [
  [:red, "Jason"],
  [:black, "Zack"],
  [:blue, "Billy"],
  [:pink, "Kimberly"],
  [:yellow, "Trini"]
]

power_rangers.to_h # => {red: "Jason", black: "Zack", blue: "Billy", pink: "Kimberly", yellow: "Trini"}


# Edge case
[].to_a # => []
{}.to_h # => {}
[1, 2, 3].to_h # => wrong element type Integer at 0 (expected array) (TypeError)
[[1], [2], [3]].to_h # => wrong array length at 0 (expected 2, was 1) (ArgumentError)

[
  ["red", "Jason"],
  [:black, "Zack"],
  [true, "Billy"],
  [:pink, "Kimberly"],
  [1, "Trini"]
].to_h # => {"red" => "Jason", black: "Zack", true => "Billy", pink: "Kimberly", 1 => "Trini"}
