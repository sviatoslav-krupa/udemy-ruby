# Notes:
#   * %w quotes like single quotes '' (no variable interpolation, fewer escape sequences)
#   * %W quotes like double quotes ""
#   * the space is a beginning of a new string, new array element

surname = "Krupa"

names = %w[Jack Jill John James Sviatoslav #{surname}]
names #=> ["Jack", "Jill", "John", "James", "Sviatoslav", "\#{surname}"]

names = %W[Jack Jill John James Sviatoslav #{surname}]
names #=> ["Jack", "Jill", "John", "James", "Sviatoslav", "Krupa"]
