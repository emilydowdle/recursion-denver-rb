# Recursion: WTF is Happening?!

## Goals:
* Understand what's happening in a recursive method.
* Write a few recursive methods as a group.
* Walk away with a better understanding of when to use recursion.

## Intro to Recursion

**Recursion is a great way to solve big problems that can be broken up into identical small problems.**

#### Problem #1 

Adding numbers is a great example of a problem that can be solved with recursion. Each section can be broken out into it's own smaller problem to solve.

( 1 + 2 + 3 + 4 ) = 10

( ( 1 + 2 + 3 ) + 4 ) = 10

( ( ( 1 + 2 ) + 3 ) + 4 ) = 10

( ( ( ( 1 ) + 2 ) + 3 ) + 4 ) = 10

A recursive solution for this could look something like this:

def sum(n)
  return 1 if n == 1 
  sum(n - 1) + n
end

#### Recursion Step-by-Step

( 1 + 2 + 3 + 4 ) = 10

def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end

#### Example: sum(4)

Step 1: sum(4) = 4 + sum(3) => go get sum(3)
Step 2: sum(3) = 3 + sum(2) => go get sum(2)
Step 3: sum(2) = 2 + sum(1) => go get sum(1)
Step 4: sum(1) = 1

At this point the program has gotten all the information it needs and can return out of the method.

Step 5: sum(1) = 1
Step 6: sum(2) = 2 + sum(1) = 2 + 1 = 3
Step 7: sum(3) = 3 + sum(2) = 3 + 3 = 6
Step 8: sum(4) = 4 + sum(3) = 4 + 6 = 10

**And that's how sum(4) returns 10**

#### The Stack

![The Stack](https://github.com/emilydowdle/recursion-denver-rb/blob/master/stack_level_too_deep.png)


















puts sum(4) # = 10






