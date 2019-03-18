# daily challenges done on https://edabit.com
# Difficulty: Very Easy

# return a sorted array
def sort_nums_ascending(arr)
    return arr.sort
end

# return the sum of two numbers
def addition(a, b)
	return a + b
end

# check if a number is a multiple of 100
def multiple_of_100?(int)
    return int % 100 == 0 ? true : false
end

# returns the next number from the integer passed
def addition(num)
	return num+1
end

# Compare Strings by Sum of Characters
def compare_string_length(str1, str2)
	return str1.length() === str2.length() ? true : false
end

# Remove Duplicates from Array
def remove_dups(arr)
	return arr.uniq()
end

# Is the Number Less than or Equal to Zero?
def less_than_or_equal_to_zero(num)
	return num <= 0 ? true : false
end

# Return the Last Element in an Array
def get_last_item(arr)
	return arr[-1]
end

# Find the Largest Number in an Array
def find_largest_num(nums)
	return nums.max()
end

# Concatenate First and Last Name into One String
def concat_name(first_name, last_name)
	return "#{last_name}, #{first_name}"
end

# Find the Smallest Number in an Array
def find_smallest_num(arr)
	return arr.min()
end

# Profitable Gamble
def profitable_gamble(prob, prize, pay)
	return prob * prize - pay > 0 ? true : false
end

# Return the First and Last Elements in an Array
def first_last(arr)
	return [arr[0], arr[-1]]
end

# Find the Total Number of Digits the Given Number Has
def find_digit_amount(num)
	return num.to_s.length()
end

# Purge and Organize
def unique_sort(arr)
	return arr.uniq.sort
end

# Get Word Count
def count_words(str)
	return str.split.count
end

# Is the Word Singular or Plural?
def is_plural(word)
	return word[-1] === 's' ? true : false
end

# To the Power of _____
def calculate_exponent(num, exp)
	return num ** exp
end

# Is the Number Even or Odd?
def is_even_or_odd(num)
	return num.odd? ? 'odd' : 'even'
end

# Find the Smallest and Biggest Numbers
def min_max(nums)
	return [nums.min, nums.max,]
end

# Multiply by Length
def multiply_by_length(arr)
	return arr.each_with_index { |item, index| arr[index] = item * arr.length}
end