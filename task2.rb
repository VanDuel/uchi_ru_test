arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

def find_all_keys(arr)
    rez = []
    arr.each { |x| rez += x.keys}
    rez.uniq
end

def find_all_values(arr)
    rez = []
    arr.each {|x| rez += x.values}
    rez.uniq
end

#не хочу, чтобы функции друг от друга имели зависимость, так что не использую функцию из б для пункта в  

def find_sum_of_values(arr)
    rez = 0
    arr.each {|x| rez += x.values.inject(0, :+)}
    rez
end

puts "Массив ключей (уникальных): #{find_all_keys(arr)}"
puts "Массив значений (уникальных): #{find_all_values(arr)}"
puts "Сумма значений (всех): #{find_sum_of_values(arr)}"