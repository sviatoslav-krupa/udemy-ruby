# Import Modules into the Current File

require_relative '02__modules_with_identical_methods' # file with modules

# Modules are available after requiring
Square.area(5) #=> 25
Rectangle.area(3, 6) #=> 18
Circle.area(9) #=> 254.46878999999998
