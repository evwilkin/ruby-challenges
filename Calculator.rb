puts 'What calculation would you like to do? (add, sub, mult, div)'
calculation = gets.chomp

puts 'What is number 1?'
num1 = gets.chomp.to_f

puts 'What is number 2?'
num2 = gets.chomp.to_f

if calculation == 'add'
  sum = num1 + num2
  puts "Your result is #{sum}"
elsif calculation == 'sub'
  diff = num1 - num2
  puts "Your result is #{diff}"
elsif calculation == 'mult'
  answer=num1*num2
  puts "Your result is #{answer}"
elsif calculation == 'div'
  answer=num1/num2
  puts "Your result is #{answer}"
else
  puts "Sorry, I don't know that one!"
end