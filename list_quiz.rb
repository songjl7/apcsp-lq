# retyrb trye if given lsit has 3 even values all next to each other, anywhere in the list
def three_even?(list)
    countevens = 0
    (list.size - 2).times do |i|
        slice = list[i..(i+2)]
        if slice[0] % 2 == 0 && slice[1] % 2 == 0 && slice[2] % 2 == 0
            return true
        end
    end
    return false
end
puts three_even?([2,1,3,5]) # false
puts three_even?([2,4,12,5]) # true
puts three_even?([2,1,4,6]) # false
puts three_even?([1,4,6,4]) # true
puts three_even?([]) # false