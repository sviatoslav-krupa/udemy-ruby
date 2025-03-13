# Notes:
#   * .add - adds an element to the set
#   * .delete - removes an element from the set
#   * both methods return the Set itself

plays = Set.new(["Romeo and Juliet", "Hamlet"])
plays       #=> #<Set: {"Romeo and Juliet", "Hamlet"}>
plays.class #=> Set

plays.add("King Lear") #=> #<Set: {"Romeo and Juliet", "Hamlet", "King Lear"}>
plays.add("King Lear") #=> #<Set: {"Romeo and Juliet", "Hamlet", "King Lear"}> (no error if duplication was provided)

plays.delete("Hamlet") #=> #<Set: {"Romeo and Juliet", "King Lear"}>
plays.delete("Hamlet") #=> #<Set: {"Romeo and Juliet", "King Lear"}> (no error if value doesn't exist)
