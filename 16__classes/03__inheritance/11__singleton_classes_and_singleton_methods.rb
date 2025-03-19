# Notes:
#   * Singleton method - method that only exists on one single instance
#   * It creates an anonymous singleton class that stores singleton method

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

bob.play_game   #=> "Winner!"
john.play_game  #=> "Loser!"

bob.cheat   #=> undefined method `cheat' for #<Player:0x00007fe4a5a37ac8> (NoMethodError)
john.cheat  #=> "Winner!"

# Method overriding
def john.play_game
  "Winner!"
end

john.play_game #=> "Winner!" (always)

bob.singleton_class   #=> #<Class:#<Player:0x00007fe4a5a37ac8>>
bob.singleton_methods   #=> []

john.singleton_class  #=> #<Class:#<Player:0x00007fe4aa8ce9c0>>
john.singleton_methods  #=> [:cheat]
