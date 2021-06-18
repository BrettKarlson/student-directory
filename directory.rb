@students = []
# See step 10 of 'student directory' on Makers Mastery Precourse
def input_students
  puts "Please enter the names of the students:"
  puts "To finish, just hit return twice."
  # get the first name.
  name = STDIN.gets.chomp
  puts "And your cohort?"
  cohort = STDIN.gets.chomp
  until name.empty? do
    save_students(name, cohort)
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
    puts "And your cohort? Or enter to stop"
    cohort = STDIN.gets.chomp
  end
end

def save_students(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}
end

def students_to_file
  # open the file for writing
  puts "Please enter a name for the file:"
  file_name = gets.chomp
  file = File.open(file_name, "w") do |file|
  # iterate over the array of students
    @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
    end
  end
  puts "We saved #{@students.count} students to file"
end

def load_students(filename = ".gitignore/students.csv")
  puts "File name?" #students.csv is default
  filename = gets.chomp 
  file = File.open(filename, "r") do |file|
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
     #@students << {name: name, cohort: cohort.to_sym}
    save_students(name, cohort)
    end
  end
  puts "We loaded #{@students.count} students." 
end

def try_load_students
  filename = ARGV.first # first argument from command line
  return if filename.nil? # leave method if no filename entered
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} students from #{filename}"
  else #if it doesn't exist
    puts "Sorry #{filename} doesn't exist."
    exit
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# change name from 'print' to 'print_students_list" (Ruby keyword)
def print_students_list
  @students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students_new.csv"
  puts "4. Load the list from .gitignore/students.csv"
  puts "9. Exit"
end

def show_students
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
  when "3"
    students_to_file
  when "4"
    load_students
  when "9"
    exit 
  else
    puts "I'm sorry, I don't know what you meant. Please try again"
  end
end

def interactive_menu
  loop do 
    print_menu
    process(STDIN.gets.chomp)
  end
end

try_load_students
interactive_menu
