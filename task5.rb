@array_of_actions = ["red", "yellow", "green", "exit"]

class NotValidExeption < StandardError; end

def is_input_valid?(input)
    @array_of_actions.include?(input) 
end

puts "Светофор 1.0.0.\nВведите один из вариантов: red, yellow или green.\nДля выхода из программы введите exit.\n"
begin
    while true
        input = gets.chomp
        if !is_input_valid?(input)
            raise NotValidExeption
        end
        case input
        when "exit"
            puts "Завершение работы программы"
            break
        when "red"
            puts "Стоять, ждать"
        when "yellow"
            puts "Приготовиться идти"
        when "green"
            puts "Идти"
        end
    end
rescue NotValidExeption
    puts "Ошибка. Введите одно из доступных значений: #{@array_of_actions.to_s}"
    retry
rescue 
    puts "Ошибка."
    retry
end