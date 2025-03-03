# RegEx Anchors
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482590#search) is the link to the video.

poem = "99 bottles of beer of the wall, 99 bottles of beer"

poem.scan(/\d/) #=> ["9", "9", "9", "9"]
poem.scan(/\d+/) #=> ["99", "99"]

# \A - search at the beginning
poem.scan(/\A\d/) #=> ["9"]
poem.scan(/\A\d+/) #=> ["99"]

# \z - search at the end
poem.scan(/\d\z/) #=> [] (no digit at the end)
poem.scan(/\d+\z/) #=> [] (no digits at the end)
poem.scan(/eer\z/) #=> ["eer"]
