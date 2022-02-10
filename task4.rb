class NotNumericExeption < StandardError; end
class TooLowTempExeption < StandardError; end

def conversion_Cel_to_Far(cel_degree)
    cel_degree * 1.8 + 32.0
end

def is_degree_valid?(degree)
    degree >= -273.15
end
def if_numeric?(degree)
    Float(degree) != nil rescue false
end

begin
    puts "Введите температуру по Цельсию"
    degree = gets.chomp
    if !if_numeric?(degree)
        raise NotNumericExeption
    end
    degree = degree.to_f
    if is_degree_valid?(degree)
        puts "Температура по Фаренгейту: #{conversion_Cel_to_Far(degree)}"
    else 
        raise TooLowTempExeption
    end
rescue TooLowTempExeption
    puts "Ошибка. Температура не может быть нижу -273.15 по Цельсию."
    retry
rescue NotNumericExeption
    puts "Ошибка. Введите численное значение градусов."
    retry
rescue 
    puts "Ошибка. Введите валидное число градусов."
    retry
end