# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  arr.each do |num|
    total += num
  end
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  sorted = arr.sort
  return sorted[-1] + sorted[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length < 2
  arr.each_with_index do |num1, i|
    (i+1...arr.length).each do |j|
      return true if num1 + arr[j] == n
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  first_char = s[0].downcase
  return first_char.match?(/[b-df-hj-np-tv-z]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false unless s.match?(/\A[01]+\z/)
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
  
end
