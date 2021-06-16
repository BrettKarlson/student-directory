# replacing each() with a while loop
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
# replace each() with a while loop. No iteration method, so a count is required.
def print(students)
  count = 0
  while count < students.count do
      puts "#{students[count][:name]} (#{students[count][:cohort]} cohort)"
      count += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.length} great students"
end

students = input_students
print_header
print(students)
print_footer(students)