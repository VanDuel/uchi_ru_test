arr = [ nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

def count_values(arr)
    arr.inject Hash.new(0) do |hash, num|
        hash[num] += 1
        hash
    end
end

puts "Ответ: #{count_values(arr)}"


#ну или, с руби 2.7
#puts arr.tally.to_s
#и готово