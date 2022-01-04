# Command Line Arguments (ARGV)
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482570#search) is the link to the video.

# ARGV - const, array with all arguments passed through command line
# Each item is String

# Run by `ruby e195__command_line_arguments_argv.rb test_argument Test AnotherTest 1 2`
p ARGV #=> ["test_argument", "Test", "AnotherTest", "1", "2"]

# Run by `ruby e195__command_line_arguments_argv.rb`
p ARGV #=> []
