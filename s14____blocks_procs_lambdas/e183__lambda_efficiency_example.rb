# Lambda Efficiency Example
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482540#overview) is the link to the video.

def convert(dollars, &convertor)
  convertor.call(dollars) if dollars.is_a?(Numeric)
end

euro_convertor = lambda { |dollars| dollars * 0.95 }
pesos_convertor = lambda { |dollars| dollars * 20.67 }
rupees_convertor = lambda { |dollars| dollars * 68.13 }

convert(1000, &euro_convertor) #=> 950.0
convert(1000, &pesos_convertor) #=> 20670.0
convert(1000, &rupees_convertor) #=> 68130.0

[1000, 2000, 3000].map(&euro_convertor) #=> [950.0, 1900.0, 2850.0]
[1000, 2000, 3000].map(&pesos_convertor) #=> [20670.0, 41340.0, 62010.00000000001]
[1000, 2000, 3000].map(&rupees_convertor) #=> [68130.0, 136260.0, 204390.0]
