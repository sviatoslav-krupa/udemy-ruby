# Mixins III - The Enumerable Module
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482644#search) is the link to the video.

class ConvenienceStore
  include Enumerable

  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  # Need to create each method to tell Ruby how to iterate objects
  def each
    snacks.each { |snack| yield(snack) }
  end
end

bodega = ConvenienceStore.new

bodega.add_snack("Doritos")
bodega.add_snack("Jolly Ranchers")
bodega.add_snack("Slim Jim")

bodega.snacks #=> ["Doritos", "Jolly Ranchers", "Slim Jim"]

bodega.each { |snack| p "#{snack} is delicious" }
=begin
  "Doritos is delicious"
  "Jolly Ranchers is delicious"
  "Slim Jim is delicious"
=end

bodega.any? { |snack| snack.length > 10 } #=> true
bodega.all? { |snack| snack.length > 10 } #=> false
bodega.map { |snack| snack.upcase } #=> ["DORITOS", "JOLLY RANCHERS", "SLIM JIM"]
bodega.sort #=> ["Doritos", "Jolly Ranchers", "Slim Jim"]
