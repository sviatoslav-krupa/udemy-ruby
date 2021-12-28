# Intro to Hashes
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482474#overview) is the link to the video.

# Documentation (https://ruby-doc.org/core-2.3.3/Hash.html)

# What is a hash:
# * A hash or a hash map is a data structure that stores key-value pairs.
# * Hashes are called dictionaries, maps, associative arrays in other languages.
# * A hash object connects unique identifiers (keys) to values.

# Rules of the hashes:
# * Hash keys and hash values can be objects of any type.
# * Hash keys must be unique (no duplicates).
# * Hash values can contain duplicates.
# * Hashes should be treated as unordered. Values are extracted by their key, not by their order (anyway, Ruby keeps ordering).

# hash example
empty_hash = {}
p empty_hash #=> {}
p empty_hash.class #=> Hash

another_hash = { a: "qwe", b: "another_qwe" }
p another_hash #=> {:a=>"qwe", :b=>"another_qwe"}
p another_hash.class #=> Hash

# Edge case
one_more_hash = { a: "qwe", a: "another_qwe" } # warning: key :a is duplicated and overwritten on line <...> (no errors)
p one_more_hash #=> {:a=>"another_qwe"}
p one_more_hash.class #=> Hash
