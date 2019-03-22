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