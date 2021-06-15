# # Let's put all the students into an array
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :june},
#   {name: "Darth Vader", cohort: :june},
#   {name: "Nurse Ratched", cohort: :june},
#   {name: "Michael Corleone", cohort: :june},
#   {name: "Alex DeLarge", cohort: :june},
#   {name: "The Wicked Witch of the West", cohort: :june},
#    {name: "Norman Bates", cohort: :june},
#  {name: "Terminator", cohort: :june},
#   {name: "Freddy Krueger", cohort: :june},
#   {name: "The Joker", cohort: :june},
#   {name: "Joffrey Baratheon", cohort: :june},
# ]

def input_students
  puts "Please enter the names of the students:"
  puts "To finish, just hit return twice."
  #create an empty array
  students = []
  # get the first name.
  name = gets.chomp
  # until the name is empty, repeat this code. 'while' and ! replaced with 'until'
  until name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :june}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

# method to print header.
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# method to iterate over the array and puts each item
def print(students)
  students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
# finally, method to print the total
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
# nothing happens until we call the methods
# must remember to save the output from 'input_students' to 'students'
# because the first 'students' is a local variable in the method
students = input_students
print_header
print(students)
print_footer(students)