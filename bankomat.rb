#require "./balance.txt"

CONST = 100.0
$balance = File.read('balance.txt').to_f
    if $balance <= CONST
      $balance = CONST
    end

class CashMachine
  
  def self.run
    puts 'Select operation:'
    puts 'D (deposit)'
    puts 'B (balance)'
    puts 'W (withdraw)'
    puts 'Q (quit)'

    user_input = gets.chomp.capitalize
    if user_input =='D'
      puts "Recommended deposit amount: #{$balance/2}, enter amount:"
      deposit = gets.to_f
      if deposit > 0
        $balance +=deposit
      elsif puts "Amount less than zero"
      end
    elsif user_input == 'B'
      puts " Balance: #{$balance}"
    elsif user_input == 'W'
      puts "Recommended withdraw amount: #{$balance/4}, enter amount:"
      withdraw = gets.chomp.to_f
      if withdraw.between?(0, $balance)
        $balance -=withdraw
      elsif puts "Insufficient funds. Balance: #{$balance}"
      end
    elsif user_input == 'Q'
        puts "Quit, bye"
    else puts "Incorrect choice, bye"
    end
    File.write('balance.txt', $balance)

  end
end

CashMachine.run