# return true if given lsit has 3 even values all next to each other, anywhere in the list
def three_even?(list)
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

# given 2 lists of numbers, both length 2, return the list which has the largest sum. in the event of a tie, return the first one given.
def bigger_two(list1, list2)
    list1_sum = list1[0] + list1[1]
    list2_sum = list2[0] + list2[1]
    if list1_sum < list2_sum
        print list2,"\n"
    elsif list2_sum < list1_sum
        print list1, "\n"
    else 
        print list1, "\n"
    end
end
bigger_two([1,2],[3,4])
bigger_two([1,7],[4,4])

# given n >= 1, create a list with the pattern [1,1,2,1,2,3,1,2,3..n]. Note that the length of the array will be 1+2+3...+n, which is known to sum to exactly n*(n+1)/2
def series_up(x)
    array = [1,1,2,1,2,3,1,2,3,4,1,2,3,4,5,1,2,3,4,5,6,1,2,3,4,5,6,7,1,2,3,4,5,6,7,8,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,10]
    realsize = x*(x+1) / 2
    if x >= 1
        print array[0..realsize-1]
    else
        return "Try a different number."
    end
end
puts series_up(1)
puts series_up(2)
puts series_up(3)
puts series_up(4)