# Let's put all the students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :june},
  {name: "Darth Vader", cohort: :june},
  {name: "Nurse Ratched", cohort: :june},
  {name: "Michael Corleone", cohort: :june},
  {name: "Alex DeLarge", cohort: :june},
  {name: "The Wicked Witch of the West", cohort: :june},
  {name: "Terminator", cohort: :june},
  {name: "Freddy Krueger", cohort: :june},
  {name: "The Joker", cohort: :june},
  {name: "Joffrey Baratheon", cohort: :june},
  {name: "Norman Bates", cohort: :june},
]
# method to print header. Not really useful
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
print_header
print(students)
print_footer(students)