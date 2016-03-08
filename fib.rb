def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  fib(n - 1) + fib(n - 2)
end

fib = 0, 1, 1, 2, 3, 5, 8, 13
fib(0) = 0
fib(5) = 5
fib(10) = 55


( 1 + 2 + 3 + 4 ) # = 10

def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end

sum(4) = 4 + sum(3) = 4 + 6 = 10
sum(3) = 3 + sum(2) = 3 + 3 = 6
sum(2) = 2 + sum(1) = 2 + 1 = 3
sum(1) = 1

sum(4) = 4 + sum(3) # => go get sum(3)
sum(3) = 3 + sum(2) # => go get sum(2)
sum(2) = 2 + sum(1) # => go get sum(1)
sum(1) = 1

# now we know what everything evaluates to, we can return out of the function

sum(1) = 1 # => sum(1) = 1
sum(2) = 2 + sum(1) = 2 + 1 = 3 # => sum(2) = 3
sum(3) = 3 + sum(2) = 3 + 3 = 6 # => sum(3) = 6
sum(4) = 4 + sum(3) = 4 + 6 = 10 # => sum(4) = 10

puts sum(4) # = 10


# The function above goes through the following steps:
#
# We pass in 4
# 4 does not equal 1; move on
# Return 4 plus sum(n - 1), which is sum(3)
# Evaluate sum(3) before returning from the function
# # 3 does not equal 1; move on
# Return 3 plus sum(n - 1), which is sum(2)
# Evaluate sum(2) before returning from the function
# # 2 does not equal 1; move on
# Return 2 plus sum(n - 1), which is sum(1)
# Evaluate sum(1) before returning from the function
# 1 is equal to 1; return 1
# We now know that sum(1) is 1; return 1 + 2, or 3
# sum(2) just returned 3; return 3 + 3, or 6
# sum(3) just returned 6; return 4 + 6, or 10
