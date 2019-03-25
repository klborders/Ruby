# daily challenges done on https://edabit.com
# Difficulty: Easy

# Palindrome?
def is_palindrome(str)
  return str.reverse == str
end

# Little Dictionary
def dictionary(initial, words)
  return words.select { |x| x.start_with?(initial) }
end

# Return the Sum of the Two Smallest Numbers
def sum_two_smallest_nums(arr)
	return arr.reject { |n| n < 0}.sort[0..1].reduce(&:+)
end

# Convert to Decimal Notation
def convert_to_decimal(perc)
  return perc.map { |x| x.chomp('%').to_f / 100 }
end

# Count Syllables
def number_syllables(word)
	return word.split('-').count
end

# First and Last Index
def char_index(word, char)
	return word.index(char) == nil ? nil : [word.index(char), word.rindex(char)]
end

# Filter by Digit Length
def filter_digit_length(arr, num)
	return arr.select { |i| i.to_s.length = num }
end

# An Introduction to the Map-Reduce Pattern
def magnitude(arr)
	return arr.empty? ? 0 : Math.sqrt(arr.map{|x| x**2}.reduce(:+))
end