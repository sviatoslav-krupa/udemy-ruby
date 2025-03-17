# Notes:
#   * Ruby firstly evaluates expression in parentheses

def authenticate_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    "Access granted, please proceed to Intelligence department!"
  else
    "Access denied, #{name}"
  end
end
authenticate_agent("007", "James Bond", "Spy")        #=> "Access granted, please proceed to Intelligence department!"
authenticate_agent("007", "Jim Bond", "Spy")          #=> "Access denied, Jim Bond"
authenticate_agent("007", "Jim Bond", "Secret Agent") #=> "Access granted, please proceed to Intelligence department!"
