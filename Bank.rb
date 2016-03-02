class Bank

  def initialize
    @balance = 0 
  end

  def deposit(amount)
    @balance += amount
    puts "Deposit accepted, your current balance is #{@balance}."
  end

  def withdraw(amount)
    @balance -= amount
    puts "Withdrawl complete, your current balance is #{@balance}"
  end

  def check_balance
    puts "Your current balance is #{@balance}."
  end

end

bank = Bank.new

puts "Your current balance is:"
puts "#{@balance}"
puts "What would you like to do? (deposit, withdraw, check_balance)"
choice = gets.chomp.downcase

if choice == 'deposit'
  puts "How much would you like to deposit?"
  deposit = gets.chomp.to_f
  bank.deposit(deposit)
elsif choice == 'withdraw'
  puts "How much would you like to withdraw?"
  withdraw = gets.chomp.to_f
  bank.withdraw(withdraw)
elsif choice == "check_balance"
  bank.check_balance
end