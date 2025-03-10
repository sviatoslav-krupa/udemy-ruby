# Object Pointers and Object Copies

# Variables and Objects:
# * All Ruby objects live on the heap, an area of computer memory.
# * Ruby creates space for each object on the heap.
# * An object returns a reference to its memory address when it is created.
# * Variables do not hold the object, they hold the reference to the object.
# * If the object is the house, the variable is the address.

# Pointers to the same object:
# * If a variable is assigned to another variable, it will point to the same object.
# * The variable becomes an alias for the object.
# * Any modification to the object will be reflected in both variables.
# * The .object_id method returns an object's location in memory.


# Completely separate objects
a = [1, 2, 3]
b = [1, 2, 3]

# object_id's are different, 2 different addresses in memory
a.object_id #=> 1020 (can be another value)
b.object_id #=> 1040 (can be another value)
a.object_id == b.object_id #=> false

a.push(4)
a #=> [1, 2, 3, 4] (changed)
b #=> [1, 2, 3] (not changed because it's the separate object)


# :b is alias for :a; they both points to one array [1, 2, 3]
a = [1, 2, 3]
b = a

# object_id's are the same, 1 address in memory
a.object_id #=> 1060
b.object_id #=> 1060
a.object_id == b.object_id #=> true

a.push(4) # there is no new object, just a mutation of the original one
a #=> [1, 2, 3, 4] (changed)
b #=> [1, 2, 3, 4] (changed because it's the same object)

# Edge cases

b = "Another object" # assigns new object to `b` variable (pointer), `a` variable (pointer) not changed

a # => [1, 2, 3, 4]
b # => "Another object"
