# This copy of directory.rb uses each_with_index on a hash to print a number in front
# of the student
def input_students
  puts "Please enter the names of the students:"
  puts "To finish, just hit return twice."
  students = []
  name = gets.chomp
  until name.empty? do
    students << {name: name, cohort: :june}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

# method to print header.
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# method to iterate over the array and puts each item. Tracks the 'index', even though
# hash.
def print(students)
  students.each_with_index do |student, idx|
  puts "#{idx + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)