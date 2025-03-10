# Notes:
#   * unless = if not

password = "dominoes with a"

if password != "whiskers"
  "Not allowed"
end #=> Not allowed

unless password == "whiskers"
  "Not allowed"
end #=> Not allowed

if password.include?("a")
  "It includes the letter \"a\""
end #=> It includes the letter "a"

unless password.include?("a")
  "It doesn't include the letter \"a\""
end #=> nil
