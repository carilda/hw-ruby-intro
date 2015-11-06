# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.reduce(:+)
end

def max_2_sum arr
  return 0 if arr.empty?
  l = arr.length
  return arr[0] if l == 1
  arr.sort!
  arr[l - 1] + arr[l - 2]
end

def sum_to_n? arr, n
  return false if n == 0 && arr.empty?
  return false if arr.length == 1
  arr.combination(2).any? { |x, y| x + y == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty?
  return false if s[0].downcase !~ /[a-z]/
  s[0].downcase !~ /[aeiou]/
end

def binary_multiple_of_4? s
	return false if s =~ /[^01]/
	l = s.length
	return false if s[l - 1] != "0" or s[l - 2] != "0"
    true
  end

# Part 3

class BookInStock
	attr_accessor :isbn, :price

	def initialize(isbn, price)
		raise ArgumentError, "isbn can't be empty string" if isbn.empty?
		raise ArgumentError, "price must be greater than 0" if price <= 0 
		@isbn = isbn
		@price = price
	end

	def price_as_string
		"$" + sprintf("%8.2f", @price).strip
	end
end
