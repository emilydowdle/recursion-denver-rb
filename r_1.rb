# Recursion is great for big problems that can be broken up into small parts

( 1 + 2 + 3 + 4 ) # = 10
( ( 1 + 2 + 3 ) + 4 ) # = 10
( ( ( 1 + 2 ) + 3 ) + 4 ) # = 10
( ( ( ( 1 ) + 2 ) + 3 ) + 4 ) # = 10


def sum(n)
  return 1 if n == 1
  sum(n - 1) + n
end

puts sum(4) # = 10
