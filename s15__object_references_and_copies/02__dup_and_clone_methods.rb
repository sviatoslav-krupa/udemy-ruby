# .dup and .clone methods

# .dup and .clone make a real copy (new object) of an object itself, not object pointer.
# When called on a .freeze object: .dup copy isn't frozen | .clone copy is frozen.

a = [1, 2, 3]
b = a.dup
c = a.clone

# object_id's are different
a.object_id # => 60
b.object_id # => 80
c.object_id # => 100

a.push(4)
a # => [1, 2, 3, 4] (changed)
b # => [1, 2, 3] (not changed because it's the separate object)
c # => [1, 2, 3] (not changed because it's the separate object)

d = "Shop Rite"
e = d.clone

d.upcase!

d # => "SHOP RITE"
e # => "Shop Rite"
