# .to_i - just cuts decimal component, the result is Integer
10.5.to_i #=> 10

# .floor - rounds down a float (opposite to .ceil), the result is Integer
10.8.floor #=> 10
10.3.floor #=> 10

# .ceil - rounds up a float (opposite to .floor), the result is Integer
10.8.ceil #=> 11
10.3.ceil #=> 11

# .round - rounds a float by mathematical rule, aArgument is optional
10.8.round #=> 11
10.3.round #=> 10

10.8.round            #=> 11 (.round the same as .round(0))
10.8.round(0)  #=> 11 (argument indicates how many digits should be after the comma)
3.14159.round(1) #=> 3.1
3.14159.round(2) #=> 3.14
3.14159.round(4) #=> 3.1416

# .abs (absolute value) - always positive
10.8.abs  #=> 10.8
-10.3.abs #=> 10.8
5.abs     #=> 5
-5.abs    #=> 5

# Edge cases:
5.floor           #=> 5
6.ceil            #=> 6
5.round           #=> 5
5.round(2) #=> 5
10.0.ceil         #=> 10
