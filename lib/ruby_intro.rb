# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
   arr.combination(2).any? { |x,y| x+y == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[^aeiou\W\d]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /^[1,0]*00$/.match(s) or /^0$/.match(s)!= nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  def initialize(isbn,price)
    if isbn == ""
      raise ArgumentError.new("wrong isbn")
    end
    if price <=0
      raise ArgumentError.new("wrong price")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    if isbn == ""
      raise ArgumentError.new("wrong isbn")
    end
    @isbn = isbn
  end
  
  def price=(price)
    if price <=0
      raise ArgumentError.new("wrong price")
    end
    @price = price 
  end
  
  def price_as_string
    '$%.2f' % [price]
  end
end
