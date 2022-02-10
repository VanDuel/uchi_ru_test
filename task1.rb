arr = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893]

def find_2min(arr)
    arr.min(2)
end

def find_2max(arr)
    arr.max(2)
end

puts "Min: #{find_2min(arr).to_s}"
puts "Max: #{find_2max(arr).to_s}"