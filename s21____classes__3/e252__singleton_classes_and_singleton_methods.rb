# Singleton Classes and Singleton Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482688#search) is the link to the video.

# singleton method - method that only exists on one single instance

class Player
  def play_game
    rand(1..100) > 50 ? "Winner!" : "Loser!"
  end
end

bob = Player.new
john = Player.new

# defining a singleton method
def john.cheat
  "Winner!"
end

bob.play_game #=> "Winner!"
john.play_game #=> "Loser!"

bob.cheat #=> undefined method `cheat' for #<Player:0x00007fe4a5a37ac8> (NoMethodError)
john.cheat #=> "Winner!"

# Method overriding
def john.play_game
  "Winner!"
end

john.play_game #=> "Winner!" (always)

# It creates anonymous singleton class that stores singleton method.
# Anonymous singleton class is a subclass of Player here.

bob.class.ancestors #=> [Player, Object, PP::ObjectMixin, Kernel, BasicObject]
john.class.ancestors #=> [Player, Object, PP::ObjectMixin, Kernel, BasicObject]

bob.singleton_methods #=> []
john.singleton_methods #=> [:cheat]

bob.singleton_class #=> #<Class:#<Player:0x00007fe4a5a37ac8>>
john.singleton_class #=> #<Class:#<Player:0x00007fe4aa8ce9c0>>
