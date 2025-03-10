# Intro to Hashes

# Documentation (https://ruby-doc.org/core-2.3.3/Hash.html)

# What is a hash:
# * A hash or a hash map is a data structure that stores key-value pairs.
# * Hashes are called dictionaries, maps, associative arrays in other languages.
# * A hash solves the problem of association (connects unique identifiers (keys) to values).

# Rules of the hashes:
# * Keys and values can be objects of any type.
# * Keys must be unique (no duplicates, String != Symbol, :a != "a").
# * Values can contain duplicates.
# * Hashes should be treated as unordered. Values are extracted by their key, not by their order (anyway, Ruby keeps ordering).

# hash example
empty_hash = {}
empty_hash # => {}
empty_hash.class # => Hash

another_hash = { a: "qwe", b: "another_qwe" }
another_hash # => {a: "qwe", b: "another_qwe"}
another_hash.class # => Hash

# Edge cases
one_more_hash = { a: "qwe", a: "another_qwe" } # warning: key :a is duplicated and overwritten on line <...> (no errors)
one_more_hash # => {a: "another_qwe"}
one_more_hash.class # => Hash

again_one_more_hash = { a: "qwe", "a": "another_qwe" } # no errors, no warnings
again_one_more_hash # => {a: "another_qwe"}
