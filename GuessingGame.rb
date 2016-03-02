class Compare

  @@count = 0
  @@number = rand(1..100).to_i
  @@guess = 0

  def initialize 
    puts 'Guess a number between 1 and 100'
    get
  end

  def get
    @@guess = gets.chomp.to_i
    compare
  end

  def compare
    if @@number > @@guess
      higher
      compare
    elsif @@number < @@guess
      lower
      compare
    elsif @@number == @@guess
      correct
    else
      unknown
    end
  end

  def higher
    @@count += 1
    puts "The number is higher than #{@@guess}. Guess again."
    get
  end

  def lower
    @@count += 1
    puts "The number is higher than #{@@guess}. Guess again."
    get
  end

  def correct
    @@count += 1
    puts "Correct!  You got it in #{@@count} tries."
  end

  def unknown
    @@count += 1
    puts "Sorry, please guess again."
    get
  end
end

play = Compare.new

