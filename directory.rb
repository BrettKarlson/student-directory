# A method to allow user input of names
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
# change name from 'print' to 'print_names" (Ruby keyword)
def print_names(students)
  students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
# finally, method to print the total
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def interactive_menu
  loop do
    students = []
    # 1. Print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      # input the students
      students = input_students
    when "2"
      # show the students
      print_header
      print_names(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I'm sorry, I don't know what you meant. Please try again"
    end
  end
end
# nothing happens until we call the methods
# must remember to save the output from 'input_students' to 'students'
# because the first 'students' is a local variable in the method
interactive_menu
