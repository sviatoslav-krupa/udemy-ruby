# The customers.txt file includes a list of all customers who
# visited our shop in the last month along with their phone numbers.
# Each customer name and phone number is separated by a comma.
# I'd like to call each phone number once to ask about them their experience.
# Some customers visited the store multiple times, so I want to make 
# sure there are no duplicate phone numbers in the final collection.
#
# Define a generate_unique_phone_numbers method.
# The method should parse the attached customers.txt file
# Return a Set with the phone numbers of the customers.
# Ignore the customer's names.
# HINT: Be mindful that each line includes a \n character at the end
# I don't want the line break character, I just want the phone number
#
# Parse the file and return a Set of all unique phone numbers.

def generate_unique_phone_numbers
  phone_numbers = Set.new

  File.open("customers.txt").each do |customer|
    phone_number = customer
                     .chomp # for removing new line symbol at the end of each line
                     .split(",")
                     .last
    phone_numbers.add(phone_number)
  end

  phone_numbers
end
