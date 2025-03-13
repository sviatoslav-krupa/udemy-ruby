# Intro to Lambdas

# lambda - anonymous method, almost identical to Proc
# lambda is an object
# it's more popular than Proc

squares_proc = Proc.new { |num| num ** 2 }
squares_alternative_proc = proc { |num| num ** 2 }
squares_lambda = lambda { |num| num ** 2 }
squares_alternative_lambda = ->(num) { num ** 2 }

squares_proc.class #=> Proc
squares_alternative_proc.class #=> Proc
squares_lambda.class #=> Proc
squares_alternative_lambda.class #=> Proc

[1, 2, 3].map(&squares_proc) #=> [1, 4, 9]
[1, 2, 3].map(&squares_alternative_proc) #=> [1, 4, 9]
[1, 2, 3].map(&squares_lambda) #=> [1, 4, 9]
[1, 2, 3].map(&squares_alternative_lambda) #=> [1, 4, 9]

squares_proc.call(4) #=> 16
squares_alternative_proc.call(4) #=> 16
squares_lambda.call(4) #=> 16
squares_alternative_lambda.call(4) #=> 16

# Edge cases

parameterless_lambda = ->() { "Testing!)" }
parameterless_lambda.call #=> "Testing!)"

alternative_parameterless_lambda = -> { "Testing!)" }
alternative_parameterless_lambda.call #=> "Testing!)"

one_more_parameterless_lambda = { "Testing!)" } #=> syntax errors found (SyntaxError)

# The differences between Proc and lambda:

# 1. How they handle the wrong number of arguments:
#   * lambda is like anonymous method, method cares about received parameters
#   * Proc just assign :nil to block variables if they are not passed

some_proc = Proc.new { |name, age| "Your name is #{name} and age is #{age}" }
some_proc.call("Sviat", 24) #=> "Your name is Sviat and age is 24"
some_proc.call("Sviat") #=> "Your name is Sviat and age is " (:age is nil)
some_proc.call #=> "Your name is  and age is " (:name is nil and :age is nil)

some_lambda = lambda { |name, age| "Your name is #{name} and age is #{age}" }
some_lambda.call("Sviat", 24) #=> "Your name is Sviat and age is 24"
some_lambda.call("Sviat") #=> wrong number of arguments (given 1, expected 2) (ArgumentError)
some_lambda.call #=> wrong number of arguments (given 0, expected 2) (ArgumentError)


# 2. How they return values within a method
#   * lambda returns control back to the method
#   * Proc returns from the entire method, doesn't return control back to the method

# lambda works as a method: run method body -> call lambda (as a method) -> run lambda body -> back to method -> run other method body
# Proc works as a block: run method body -> substitute Proc call with Proc body -> run Proc body as a part of a method -> run other method body

def lambda_diet
  status = lambda { return "You gave in" }
  status.call
  "You completed the diet!"
end
lambda_diet #=> "You completed the diet!"

def proc_diet
  status = Proc.new { return "You gave in" }
  status.call
  "You completed the diet!"
end
proc_diet #=> "You gave in"

# Edge cases

def another_lambda_diet
  status = lambda { "You gave in" }
  status.call
  "You completed the diet!"
end
another_lambda_diet #=> "You completed the diet!"

def another_proc_diet
  status = Proc.new { "You gave in" }
  status.call
  "You completed the diet!"
end
another_proc_diet #=> "You completed the diet!" (no :return keyword)
