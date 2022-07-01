def foobar(number_1, number_2)
  if number_1 == 20
    puts "Ваш результат #{number_2}"
  elsif number_2 == 20
    puts "Ваш результат #{number_1}"
  else puts "Ваш результат #{number_1 + number_2}"
  end
end

puts "Введите первое число"
number_1 = gets.to_i
puts "Введите второе число"
number_2 = gets.to_i

foobar(number_1, number_2)