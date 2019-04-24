def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  students = []
  
  name = gets.chomp
  location = gets.chomp
  club = gets.chomp
  
  while !name.empty? do
    students << {name: name, cohort: :november, place_of_birth: location, club: club}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  
  students
end

def print_header
  puts "The students of Villain Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  students.each do |student|
    if student[:name].length <= 12
      puts "#{student[:name]} (#{student[:cohort]} cohort)".center(50)
    end
  end    
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)

# Exercise 1 - Done
# Exercise 2 - Done
# Exercise 3 - Done
# Exercise 4
# Exercise 5 - Done
# Exercise 6 - Done
# Exercise 7
# Exercise 8
# Exercise 9
# Exercise 10
# Exercise 11
# Exercise 12