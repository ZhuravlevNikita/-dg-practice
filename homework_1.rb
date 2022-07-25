def greeting(firstname, lastname, age)
  a = "Привет, #{firstname.capitalize} #{lastname.capitalize}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  b = "Привет, #{firstname.capitalize} #{lastname.capitalize}. Самое время заняться делом!"
  if age < 18
    puts a
  else 
    puts b
  end
end
puts "Введите имя:"
firstname = gets.chomp
puts "Введите фамилию:"
lastname = gets.chomp
puts "Введите возраст, численно:"
age = gets.chomp.to_i

greeting(firstname, lastname, age)