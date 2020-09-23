# def doubler(start)
#   puts start
#   if start < 10
#     doubler(start * 2)
#   end
# end

# doubler(3)

# wierd ass fibonacci recursion
def fibonacci(number)
  return number if number < 2
  return fibonacci(number - 1) + fibonacci(number - 2)
end

# puts fibonacci(10)

# Countdown recursion

# def countdown(number)
#   if number <= 0
#     puts number
#   else
#     puts number
#     countdown(number - 1)
#   end
# end

# countdown(100)

def append(ary, n)
  return ary if n == 0
  ary.push(n)
  return append(ary, n - 1)
end

def reverse_append(ary, n)
  return ary if n < 0
  ary.unshift(n)
  return reverse_append(ary, n - 1)
end

# p reverse_append([], 10)

def n_factorial(n)
  return n if n <= 1
  return n * n_factorial(n - 1)
end

# p n_factorial(0)

def palindrome?(string)
  string = string.gsub(/[\s+\.]/, "").downcase
  return true if string.length == 1 || string.length == 0
  return palindrome(string[1..-2]) if string[0] == string[-1]
  return false
end

# palindrome?("A nut for a jar of tuna.")

def n_bottles_of_beer(n)
  if n == 0
    print "no more bottles of beer on the wall\n"
  else
    print "#{n} bottles of beer on the wall\n"
    return n_bottles_of_beer(n - 1)
  end
end

# n_bottles_of_beer(99)

def fib(n)
  return n if n < 2
  return fib(n - 1) + fib(n - 2)
end

def flat_ar(arr, result = [])
  arr.each do |element|
    if element.kind_of?(Array)
      flat_ar(element, result)
    else
      result << element
    end
  end
  return result
end

# arr = [[1, [8, 9]], [3, 4]]
# flat_ar(arr)

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I",
}

def int_to_roman(roman_mapping, number, result = "")
  return result if number == 0
  roman_mapping.keys.each do |divisor|
    quotient, modulus = number.divmod(divisor)
    result << roman_mapping[divisor] * quotient
    return int_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end

int_to_roman(roman_mapping, 5)
