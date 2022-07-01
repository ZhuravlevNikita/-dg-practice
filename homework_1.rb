def greeting(name, lastname, age)
  if age < 18
    puts "Привет, #{name.capitalize} #{lastname.capitalize}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  else 
    puts "Привет, #{name.capitalize} #{lastname.capitalize}. Самое время заняться делом!"
  end
end
puts "Введите имя:"
name = gets.chomp
puts "Введите фамилию:"
lastname = gets.chomp
puts "Введите возраст, численно:"
age = gets.chomp.to_i

greeting(name, lastname, age)