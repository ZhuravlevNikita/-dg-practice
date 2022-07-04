require 'rspec'
def greeting
    puts "Введите имя:"
    firstname = gets.chomp
    puts "Введите фамилию:"
    lastname = gets.chomp
    puts "Введите возраст, численно:"
    age = gets.to_i

    a = "Привет, #{firstname.capitalize} #{lastname.capitalize}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
    b = "Привет, #{firstname.capitalize} #{lastname.capitalize}. Самое время заняться делом!"
    if age < 18
      a
    else 
      b
    end
end


RSpec.describe "test homework_1.rb" do
    it "#greeting" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('Fedor', 'Kolpakov', 19)

        expect(greeting).to eq('Привет, Fedor Kolpakov. Самое время заняться делом!')
    
    end
end