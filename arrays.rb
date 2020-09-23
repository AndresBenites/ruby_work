# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# puts(arr.include?(number))

# arr = ["b", "a"]
# arr = arr.product(Array(1..3))
# p arr
# p arr.first
# p arr.first.last
# arr.first.delete(arr.first.last)
# p arr

# arr = ["b", "a"]
# arr = arr.product([Array(1..3)])
# p arr
# arr.first.delete(arr.first.last)
# p arr

# arr = [["test", "hello", "world"], ["example", "mem"]]
# puts arr[1][0]
# puts arr.last.first

arr = [15, 7, 18, 5, 12, 8, 5, 1]

# puts arr.index(5)

# # puts arr.index[5] # errors

# puts arr[5]

# arr.each_with_index { |entry, index| puts "arr.[#{index}] = #{entry}" }

arr2 = arr.map { |num| num + 2 }
p arr
p arr2
