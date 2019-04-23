def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  students = []
  
  name = gets.chomp
  
  while !name.empty? do
    students << {name: name, cohort: :november}
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
counter = 0 
  while counter <= students.last.index
    puts "#{student[counter[:name]]} (#{student[counter[:cohort]]} cohort)"
    counter += 1
  end    
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)