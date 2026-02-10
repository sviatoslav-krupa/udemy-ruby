# Notes:
#   * Arguments are passed in the same order as parameters
#   * We can't skip first optional parameter and fill only second
#   * Ruby is smart enough to work with optional parameters, so it's not obvious to push default parameters to the end
#   * Multiple optional parameters must be placed together

def make_phone_call(number, international_code = 1, area_code = 646)
  puts "Calling #{international_code}-#{area_code}-#{number}"
end
make_phone_call(1234567, 5, 999)  #=> Calling 5-999-1234567
make_phone_call(1234567,4)        #=> Calling 4-646-1234567
make_phone_call(1234567)          #=> Calling 1-646-1234567
make_phone_call(1234567, nil, 5)  #=> Calling -5-1234567

# Edge cases:
def wrong_make_phone_call(number = 123456, international_code, area_code = 646) #=> syntax error found (SyntaxError): unexpected parameter order
  puts "Calling #{international_code}-#{area_code}-#{number}"
end

def first_interesting_phone_call(number = 123456, international_code)
  "Calling #{number}-#{international_code}"
end
first_interesting_phone_call          #=> wrong number of arguments (given 0, expected 1..2) (ArgumentError)
first_interesting_phone_call(89)      #=> Calling 123456-89
first_interesting_phone_call(123, 89) #=> Calling 123-89

def second_interesting_phone_call(test, number = 123456, international_code)
  "Calling #{test}-#{number}-#{international_code}"
end
second_interesting_phone_call("test", "number", "int-code") #=> "Calling test-number-int-code"
second_interesting_phone_call("test", "int-code")           #=> "Calling test-123456-int-code"
second_interesting_phone_call("test")                       #=> wrong number of arguments (given 1, expected 2..3) (ArgumentError)
