# Notes:
#   * `\A` - search at the beginning
#   * `\z` - search at the end

poem = "99 bottles of beer of the wall, 99 bottles of beer"

poem.scan(/\d/)   #=> ["9", "9", "9", "9"]
poem.scan(/\d+/)  #=> ["99", "99"]

poem.scan(/\A\d/)   #=> ["9"]
poem.scan(/\A\d+/)  #=> ["99"]

poem.scan(/\d\z/)   #=> [] (no digit at the end)
poem.scan(/\d+\z/)  #=> [] (no digits at the end)
poem.scan(/eer\z/)  #=> ["eer"]
