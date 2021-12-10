# Default or Optional Parameters
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481616#overview) is the link to the video.

# Default parameters must be pushed to the end

def make_phone_call(number, international_code = 1, area_code = 646)
  puts "Calling #{international_code}-#{area_code}-#{number}"
end

make_phone_call(1234567, 5, 999) # => Calling 5-999-1234567
make_phone_call(1234567,4) # => Calling 4-646-1234567
make_phone_call(1234567) # => Calling 1-646-1234567

# Edge cases
# Arguments are passed in the same order as parameters.
# We can't skip first optional parameter and fill only second (we can skip parameters only at the end).
make_phone_call(1234567, nil, 5) # => Calling -5-1234567
