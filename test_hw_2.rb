require 'rspec'
def foobar(number_1, number_2)
    if number_1 == 20
      number_2
    elsif number_2 == 20
      number_1
    else number_1 + number_2
    end
end
  


RSpec.describe 'test homework_2' do
    it '#foobar' do
        number_1 = 20
        number_2 = 10
        expect(foobar(number_1, number_2)).to eq(10)
    end

end