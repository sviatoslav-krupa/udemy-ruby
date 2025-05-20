# Notes:
#   * Proc argument should be at the end of parameters list
#   * If block isn't provided and `block.call` is used: `undefined method 'call' for nil:NilClass (NoMethodError)`
#   * If block isn't provided and `yield` is used: `no block given (yield) (LocalJumpError)`

def talk_about(name, &myprc)
  puts "Let me tell you about #{name}"
  myprc.call(name) # or `yield(name)`
end

good_thing = Proc.new { |name| puts "#{name} is a genius" }
bad_thing = proc { |name| puts "#{name} is a bad" }

talk_about("Sviat", &good_thing)
# OUTPUT:
#   Let me tell you about Sviat
#   Sviat is a genius

talk_about("Sviat", &bad_thing)
# OUTPUT:
#   Let me tell you about Sviat
#   Sviat is a bad


def another_talk_about(name)
  puts "Let me tell you about #{name}"
  yield(name)
end

another_talk_about("Sviat", &good_thing)
# OUTPUT:
#   Let me tell you about Sviat
#   Sviat is a genius

another_talk_about("Sviat", &bad_thing)
# OUTPUT:
#   Let me tell you about Sviat
#   Sviat is a bad

# Edge cases:
def one_more_talk_about(&myprc, name); end # syntax error found (SyntaxError)
