File.rename("03__new_file.txt", "03__something_better.txt")

File.delete("03__something_better.txt")
File.delete("03__something_better.txt") #=> No such file or directory @ apply2files - something_better.txt (Errno::ENOENT)

if File.exist?("03__something_better.txt")
  File.delete("03__something_better.txt") #=> no error
end
