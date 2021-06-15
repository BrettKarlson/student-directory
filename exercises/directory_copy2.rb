# modified to print the student's name if it begins with a specific letter
def input_students
  puts "Please enter the names of the students:"
  puts "To finish, just hit return twice."
  students = []
  name = gets.chomp.capitalize
  until name.empty? do
    students << {name: name, cohort: :june}
    puts "Now we have #{students.count} students"
    name = gets.chomp.capitalize
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# method print now takes a second argument 'letter', given when method called.
def print(students, letter)
  students.each do |student|
    if student[:name][0] == letter
      puts "A name beginning with #{letter}: #{student[:name]} (#{student[:cohort]} cohort)"
    else
      puts "Sorry, #{student[:name]} doesn't start with #{letter}"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students, "B")
# print_footer(students)