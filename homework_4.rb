def hash_pokemon(n)
  arr = []
  while n >= 1
    h = Hash
    puts "Введите имя"
    name = gets.chomp
    puts "Введите цвет"
    color = gets.chomp
    arr << h["name", name, "color", color]
    n = n-1
  end
  puts arr
end

puts "Введите число"
n = gets.to_i
hash_pokemon(n)