# Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp
  
  while !name.empty? do
    puts "Please give their age"
    age = gets.chomp
    puts "What are their hobbies"
    hobbies = gets.chomp
    puts "Where were they born?"
    birthplace = gets.chomp
    
    students << {name: name, cohort: :november, age: age, hobbies: hobbies, birthplace: birthplace}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

  students
end

def print_header
  puts "The students of Villain Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)