# CHALLENGE: Word Frequency in a Sentence String

sentence = "Once upon a time in a land far far away"

def word_count(text)
  # returns a hash where:
  #   * the keys will represent the words in the string
  #   * the values will represent how many times that key occurs

  words = text.split
  result = Hash.new(0)

  words.each do |word|
    result[word] += 1
  end

  result
end

word_count(sentence) #=> {"Once"=>1, "upon"=>1, "a"=>2, "time"=>1, "in"=>1, "land"=>1, "far,"=>2, "away"=>1}

# Or .tally (https://ruby-doc.org/core-2.7.2/Enumerable.html#method-i-tally)
sentence.split.tally #=> {"Once" => 1, "upon" => 1, "a" => 2, "time" => 1, "in" => 1, "land" => 1, "far" => 2, "away" => 1}
