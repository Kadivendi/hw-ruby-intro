# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() <= 2
    arr.sum
  else
    arr.max(2).sum
  end
end

def sum_to_n? arr, n
  num = Set.new
  res = false
  for item in arr
    if num.include? (n-item)
      res = true
    end
    num.add item
  end
  res
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  name = "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s = s.downcase
  
  res = false
  if  s.length==0||s.start_with?('a','e','i','o','u')
    res = false
  elsif s[0].match?(/[[:alpha:]]/) 
    res = true
  end
  res
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  res = false
  puts s
  puts (not s !~ /[^01]/)
  if not s !~ /[^01]/
      res = false
  elsif (s.to_i(2))%4 == 0 && s.length != 0
      puts s.to_i(2)
      res = true
  end
  res
end

# Part 3

class BookInStock
# YOUR CODE HERE

  def initialize(isbn, price)
    if isbn.empty? or price<=0
      raise ArgumentError.new("invalid input argument")
    end
      
    @isbn = isbn
    @price = price
    puts "Value of First instance variable is: #{@isbn}"
  end
  
  #getters
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  #setters
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    "$".concat("#{format("%.2f",@price)}")
  end
  
end
