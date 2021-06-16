# A method to allow user multiple inputs
def input_students
  puts "Please enter your name:"
  puts "To finish, just hit return twice, or ^C to leave early"
  #create an empty array
  students = []
  # get the first name. Using 'chop' to rid of last character, but chomp better since chop will remove letter
  # if no \n
  name = gets.chop.capitalize
  # until the name is empty, repeat this code. 'while' and ! replaced with 'until'
  until name.empty? do
    # get more information
    while true do
    puts "Please enter your cohort:"
    cohort = gets.chomp.downcase
    months = %w(january february march april may june july august september october november december)
    if !months.include?(cohort)
      puts "Make sure you type carefully, and enter the whole name of the month. ".center(99, ';-)')
    elsif cohort == ""
      cohort = "Not entered"
      break
    else
      cohort
      break
    end
  end

    puts "Please enter your age:"
    age = gets.chomp
    if age == ""
      age = "Not entered"
    else
      age 
    end
    puts "Please enter the country of your birth:"
    country = gets.chomp.capitalize
    if country == ""
      country = "Not entered"
    else
      country
    end
    puts "Please enter a hobby: "
    hobby = gets.chomp
    if hobby == ""
      hobby = "Not entered"
    else
      hobby
    end
    # add the student hash to the array
    students << {name: name, cohort: cohort, age: age, country: country, hobby: hobby}
    puts "Now we have #{students.count} students"

    # get another name from the user
    puts "Please enter your name:"
    name = gets.chop.capitalize
  end
  # return the array of students. Output to console, to inspect
  students
end
# method to print students grouped by cohort. Only prints out name
def print_groups(array)
  cohort_hash = {}
  array.map do |student|
    cohort = student[:cohort]
    name = student[:name]
    if cohort_hash[cohort] == nil
      cohort_hash[cohort] = [name]
    else
      cohort_hash[cohort].push(name)
    end
  end
  puts cohort_hash
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
  if names.count == 0
    puts "No students entered yet"
  elsif names.count == 1
  puts "We only have one student"
  else
    puts "Now we have #{names.count} great students"
  end
end
# nothing happens until we call the methods
# must remember to save the output from 'input_students' to 'students'
# because the first 'students' is a local variable in the method
students = input_students
print_header
# print(students)
print_groups(students)
print_footer(students)