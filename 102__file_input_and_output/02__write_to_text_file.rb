# Flags for File.open(...):
#   * r - read (default)
#   * w - write (overwrite everything in a file)
#   * a - append (adds to the file)

# Notes:
#   * file.puts - adds line with line break in the end
#   * file.write - adds line without line break in the end
#   * `File.open(...)` creates a new file if it doesn't exist

File.open("02__my_first_file.txt", "w") do |file|
  file.puts "I'm creating this from Ruby"
  file.write "No line break in the end"
  file.puts "Pretty cool!"
end

File.open("02__my_first_file.txt", "a") do |file|
  file.puts "This will be appended to the end"
end
