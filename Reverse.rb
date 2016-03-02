puts "Enter a string:"

usertext = gets.chomp

letters = []
reversed = []

usertext.each_char do |letter|
  letters.push(letter)
end

x = letters.length

while x > 0
  reversed.push(letters[x-1])
  x -= 1
end

print reversed.join