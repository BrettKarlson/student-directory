# modified to print names less than 12 characters
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

def print(students)
  students.each do |student|
    if student[:name].length < 12
      puts "This student's name has less than 12 characters: #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
# print_footer(students)