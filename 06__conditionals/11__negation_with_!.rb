user = "free"

if user != "subscriber"
  puts "Only subscribers are allowed!"
end #=> nil
# OUTPUT:
#   Only subscribers are allowed!

true #=> true

# Automatically converts to Boolean and negate
!true #=> false
!1    #=> false
!nil  #=> true
!""   #=> false

# Converting to Boolean
!!1           #=> true
!!false       #=> false
!!nil         #=> false
!!""          #=> true
!!"Spaceship" #=> true
