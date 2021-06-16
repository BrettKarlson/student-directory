@students = []

# A method to allow user input of names
def input_students
  puts "Please enter the names of the students:"
  puts "To finish, just hit return twice."
  # get the first name.
  name = gets.chomp
  # until the name is empty, repeat this code. 'while' and ! replaced with 'until'
  until name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :june}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
  end
end

# method to print header.
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# method to iterate over the array and puts each item
# change name from 'print' to 'print_names" (Ruby keyword)
def print_students_list
  @students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
# finally, method to print the total
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  # show the students
  print_header
  print_students_list
  print_footer(@students)
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit 
  else
    puts "I'm sorry, I don't know what you meant. Please try again"
  end
end

def interactive_menu
  loop do 
    print_menu
    process(gets.chomp)
  end
end
# nothing happens until we call the methods
# must remember to save the output from 'input_students' to 'students'
# because the first 'students' is a local variable in the method
interactive_menu
