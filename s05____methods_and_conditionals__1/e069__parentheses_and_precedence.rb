# Parentheses and Precedence
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481600#overview) is the link to the video.

# Operator precedence in Ruby (https://www.geeksforgeeks.org/operator-precedence-in-ruby/)

def authenticate_agent(rank, name, credentials)
  # Ruby firstly evaluates expression in parentheses
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    puts "Access granted, please proceed to Intelligence department!"
  else
    puts "Access denied, #{name}"
  end
end

authenticate_agent("007", "James Bond", "Spy") # => Access granted, please proceed to Intelligence department!
authenticate_agent("007", "Jim Bond", "Spy") # => Access denied, Jim Bond
authenticate_agent("007", "Jim Bond", "Secret Agent") # => Access granted, please proceed to Intelligence department!
