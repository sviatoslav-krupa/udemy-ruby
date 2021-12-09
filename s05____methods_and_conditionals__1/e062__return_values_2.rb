# Return Values II - Default Return Values and the Return of the puts Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481568#overview) is the link to the video.

# short form of a method definition
def return_nothing; end

p return_nothing # => nil


def return_string
  "Hello, World!"
end

def return_nothing_again
  puts "Hello, World!"
end

p return_string # => "Hello, World!"
p return_nothing_again # => nil (cause :print and :puts returns nil; prints Hello, World!)
p return_nothing_again.class # => NilClass
