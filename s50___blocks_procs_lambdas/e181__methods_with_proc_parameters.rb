# Methods with Proc Parameters
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482536#overview) is the link to the video.

def talk_about(name, &myprc)
  puts "Let me tell you about #{name}"
  myprc.call(name)
end

good_thing = Proc.new { |name| puts "#{name} is a genius" }
bad_thing = Proc.new { |name| puts "#{name} is a bad" }

talk_about("Sviat", &good_thing)
=begin
  Let me tell you about Sviat
  Sviat is a genius
=end

talk_about("Sviat", &bad_thing)
=begin
  Let me tell you about Sviat
  Sviat is a bad
=end


def another_talk_about(name)
  puts "Let me tell you about #{name}"
  yield(name)
end

another_talk_about("Sviat", &good_thing)
=begin
  Let me tell you about Sviat
  Sviat is a genius
=end

another_talk_about("Sviat", &bad_thing)
=begin
  Let me tell you about Sviat
  Sviat is a bad
=end
