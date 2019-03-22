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

# Nth Smallest Element
def nth_smallest(arr, n)
	return arr.sort[n-1]
end

# Find the Index
def find_index(arr, str) 
	return arr.index(str)
end

# Shuffle the Name
def name_shuffle(str)
	return str.split.reverse.join(' ')
end

# Valid Zip Code
def is_valid(zip_code)
	return true if Integer(zip_code) && zip_code.length == 5 rescue false
end

# Alphabet Soup
def alphabet_soup(str)
	return str.split('').sort.join('')
end

# Sort an Array by String Length
def sort_by_length(arr)
	return arr.sort_by {|x| x.length}
end

# Transform into an Array with No Duplicates
def set(arr)
	return arr.uniq
end

# Partially Hidden String
def partially_hide(phrase)
    new_phrase = []
    phrase.split.each do |x|
      new_phrase << x.sub(x.slice(1..-2), ('-') * x.slice(1..-2).length)
    end
    return new_phrase.join(' ')
end

# Is the Average of All Elements a Whole Number?
def is_avg_whole?(arr)
    sum_of_arr = arr.inject(0) {|sum,x| sum + x }
	return (sum_of_arr / arr.length.to_f)%1==0 ? true : false
end

# Xs and Os, Nobody Knows
def xo(str)
	o_count = str.downcase.scan('o').count
	x_count = str.downcase.scan('x').count
	return o_count == x_count ? true : false
end

# Check for Anagrams
def is_anagram(s1, s2)
	return s1.downcase.split('').sort == s2.downcase.split('').sort
end

# Even Number Generator
def find_even_nums(num)
	even_nums = []
	(1..num).each { |x| even_nums << x if x.even?}
	return even_nums
end

# Flip the Boolean
def reverse(bool)
    return [true, false].include?(bool) ? !bool : 'boolean expected'
end

# Amplify the Multiples of 4
def amplify(num)
	arr = []
	(1..num).each do |n|
    	n % 4 == 0 ? arr << n * 10 : arr << n
	end
	return arr
end

# Reverse the Case
def reverse_case(str)
	return str.swapcase
end

# Return the Four Letter Strings
def is_four_letters(arr)
	new_arr = []
	arr.each { |x| new_arr << x if x.length == 4}
	return new_arr
end

# Eliminate Odd Numbers within an Array
def no_odds(arr)
	even_arr = []
	arr.each { |x| even_arr << x if x.even?}
	return even_arr
end

# Capitalize the Names
def cap_me(arr)
	new_arr = []
	arr.each do |x|
		x = x.downcase
		x[0] = x[0].capitalize
		new_arr << x
	end
	return new_arr
end

# Count Instances of a Character in a String
def char_count(str1, str2)
	return str2.scan(str1).count
end

# Find the Largest Numbers in a Group of Arrays
def find_largest_nums(arr)
	largest = []
	arr.each { |x| largest << x.sort[-1] }
	return largest
end

# How Many Vowels?
def count_vowels(str)
	return str.scan(/[aeoui]/).count
end

# Check if String Ending Matches Second String
def check_ending(str1, str2)
	return str1[-str2.length..-1] == str2 ? true : false
end

# Is the Number Symmetrical?
def is_symetrical?(int)
	return int === int.to_s.reverse.to_i ? true : false
end

# Convert Number to String of Dashes
def num_to_dashes(num)
	return '-'*num
end

# Repeat the Same Item Multiple Times
def repeat(item, times)
	arr = []; arr += [item] * times; return arr
end

# Convert Number to Corresponding Month Name
# Edabit couldn't load the Date class :P
def month_name(num)
	months = {
		1 => 'January',
		2 => 'February',
		3 => 'March',
		4 => 'April',
		5 => 'May',
		6 => 'June',
		7 => 'July',
		8 => 'August',
		9 => 'September',
		10 => 'October',
		11 => 'November',
		12 => 'December',
	}
	return months[num]
end

# Return the Factorial
def factorial(int)
  return (1..int).inject(:*)
end

# Calculate the Mean
def mean(arr)
	return (arr.inject(:+) / arr.length.to_f).round(2)
end

# Absolute Sum
def get_abs_sum(arr)
	x = 0; arr.each { |i| x = x + i.abs}; return x
end

# Add up the Numbers from a Single Number
def add_up(num)
  return (1..num).inject(:+)
end

# Slice of Pie
def equal_slices(total, people, each)
  return people * each <= total ? true : false
end

# Repeating Letters
def double_char(str)
	arr = []; str.split('').each { |x| arr << (x*2) }; return arr.join
end

# Pi to N Decimal Places
def my_pi(n)
	return Math::PI.round(n)
end

# Remove Every Vowel from a String
def silence_trump(str)
	return str.gsub(/[(aeouiAEIOU)]/,'')
end

# Filter out Strings from an Array
def filter_list(arr)
	return arr.select {|x| x.is_a?(Integer) }
end