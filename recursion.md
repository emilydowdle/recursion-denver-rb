# Recursion: WTF is Happening?!

## Goals:
* Understand what's happening in a recursive method.
* Write a few recursive methods as a group.
* Walk away with a better understanding of when to use recursion.

## Intro to Recursion

**Recursion is a great way to solve big problems that can be broken up into identical small problems.**

#### Problem #1 

Adding numbers is a great example of a problem that can be solved with recursion. Each section can be broken out into it's own smaller problem to solve.

( 1 + 2 + 3 + 4 ) # = 10

( ( 1 + 2 + 3 ) + 4 ) # = 10

( ( ( 1 + 2 ) + 3 ) + 4 ) # = 10

( ( ( ( 1 ) + 2 ) + 3 ) + 4 ) # = 10

A recursive solution for this could look something like this:

def sum(n)
  return 1 if n == 1 
  sum(n - 1) + n
end

#### Recursion Step-by-Step

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
















puts sum(4) # = 10






