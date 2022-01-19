# Monkey Patching III
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482662#search) is the link to the video.

class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

goosebumps = Book.new("Night of the Living Dummy", "R.L. Sting", 100)

class Book
  def read
    1.step(@pages, 10) { |page| p "Reading page #{page}..." }
    p "Done!"
  end
end

goosebumps.read
=begin
  "Reading page 1..."
  "Reading page 11..."
  "Reading page 21..."
  "Reading page 31..."
  "Reading page 41..."
  "Reading page 51..."
  "Reading page 61..."
  "Reading page 71..."
  "Reading page 81..."
  "Reading page 91..."
  "Done!"
=end

animal_farm = Book.new("Animal Farm", "George Orwell", 50)
animal_farm.read
=begin
  "Reading page 1..."
  "Reading page 11..."
  "Reading page 21..."
  "Reading page 31..."
  "Reading page 41..."
  "Reading page 51..."
  "Reading page 61..."
  "Reading page 71..."
  "Reading page 81..."
  "Reading page 91..."
  "Done!"
=end
