# Rename and Delete a File with Ruby
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482568#search) is the link to the video.

# Renaming
File.rename("e194__new_file.txt", "e194__something_better.txt")

# Deleting
File.delete("e194__something_better.txt")

File.delete("e194__something_better.txt") #=> No such file or directory @ apply2files - something_better.txt (Errno::ENOENT)

if File.exist?("e194__something_better.txt")
  File.delete("e194__something_better.txt") #=> no error
end
