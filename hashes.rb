# family = { uncles: ["bob", "joe", "steve"],
#            sisters: ["jane", "jill", "beth"],
#            brothers: ["frank", "rob", "david"],
#            aunts: ["mary", "sally", "susan"] }

# fam2 = family.select { |k, v| k == :sisters || k == :brothers }.values.flatten
# p fam2

name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19 }

# def printKeys(hash)
#   hash.each_key { |key| puts key }
# end

# def printValues(hash)
#   hash.each_value { |value| puts value }
# end

# def printBoth(hash)
#   hash.each { |key, value| puts "#{key} is #{value} years old" }
# end

# # printKeys(name_and_age)
# # printValues(name_and_age)
# printBoth(name_and_age)

# person = { name: "Bob", occupation: "web developer", hobbies: "painting" }

# # puts person[:name]

# # preferred way to search for value in hash
# def valueInHash(hash, value)
#   found = false
#   hash.each_value { |v|
#     if v.downcase == value.downcase
#       found = true
#     end
#   }
#   return found
# end

# my_find = "bob"
# if valueInHash(person, my_find) == true
#   puts "#{my_find} was found in the hash."
# else
#   puts "#{my_find} was not found in the hash"
# end

# # less configurable way to search through hash for value
# def hasValue(hash, value)
#   if hash.has_value?(value)
#     puts "Yes it has this value"
#   else
#     puts "Nope. It doesn't have this value"
#   end
# end

# hasValue(person, "bob")

words = ["demo", "none", "tied", "evil", "dome", "mode", "live",
         "fowl", "veil", "wolf", "diet", "vile", "edit", "tide",
         "flow", "neon"]

def getAnagrams(array)
  my_word = []
  result = {}
  array.each { |word|
    my_word = word.split("").sort.join("")
    if result.has_key?(my_word)
      #   p "has key"
      result[my_word].push(word)
    else
      #   p "no key"
      result[my_word] = [word]
    end
  }
  return result
end

my_array = getAnagrams(words)
my_array.each_value { |v|
  p v
}

# def anagrams(array)
#   my_word = []
#   my_word_2 = []
#   return_array = []
#   array.each { |v|
#     my_word = v.split("")
#     array.each_with_index { |v2, i|
#       my_word_2 = v2.split("")
#       if (my_word - my_word_2).empty?
#         return_array << my_word_2.join("")
#       else
#         next
#       end
#     }
#   }
#   return return_array.uniq!
# end

# p anagrams(words)

# result = {}

# words.each do |word|
#   key = word.split("").sort.join
#   p key
#   if result.has_key?(key)
#     result[key].push(word)
#   else
#     result[key] = [word]
#   end
# end

# result.each_value do |v|
#   puts "------"
#   p v
# end
