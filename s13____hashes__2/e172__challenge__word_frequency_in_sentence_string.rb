# CHALLENGE: Word Frequency in a Sentence String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482514#overview) is the link to the exercise.

sentence = "Once upon a time in a land far far away"

def word_count(string)
  # returns a hash where the keys will represent the words in the string
  # and the values will represent how many times that key occurs

  words = string.split
  result = Hash.new(0)

  words.each do |word|
    result[word] += 1
  end

  result
end

word_count(sentence) #=> {"Once"=>1, "upon"=>1, "a"=>2, "time"=>1, "in"=>1, "land"=>1, "far,"=>2, "away"=>1}
