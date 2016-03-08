# Recursion: WTF is Happening?!

## Goals:
* Understand what's happening in a recursive method.
* Write a few recursive methods as a group.
* Walk away with a better understanding of when to use recursion.

## Intro to Recursion

**Recursion is a great way to solve big problems that can be broken up into identical small problems.**

#### Problem #1: Finding the Sum of Numbers

Adding numbers is a great example of a problem that can be solved with recursion. Each section can be broken out into it's own smaller problem to solve.

( 1 + 2 + 3 + 4 ) = 10

( ( 1 + 2 + 3 ) + 4 ) = 10

( ( ( 1 + 2 ) + 3 ) + 4 ) = 10

( ( ( ( 1 ) + 2 ) + 3 ) + 4 ) = 10

A recursive solution for this could look something like this:

```def sum(n)
  return 1 if n == 1 
  sum(n - 1) + n
end```

#### Recursion Step-by-Step

**Example: sum(4)**

```def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end```

`Step 1: sum(4) = 4 + sum(3) => go get sum(3)`

`Step 2: sum(3) = 3 + sum(2) => go get sum(2)`

`Step 3: sum(2) = 2 + sum(1) => go get sum(1)`

`Step 4: sum(1) = 1`

At this point the program has gotten all the information it needs and can return out of the method.

`Step 5: sum(1) = 1`

`Step 6: sum(2) = 2 + sum(1) = 2 + 1 = 3`

`Step 7: sum(3) = 3 + sum(2) = 3 + 3 = 6`

`Step 8: sum(4) = 4 + sum(3) = 4 + 6 = 10`

**And that's how sum(4) returns 10**

#### The Stack

Recursion in Ruby follows a first-in/last-out pattern. 

But our machines are limited to how much they can retain at one time. Which is why you can get a `stack level too deep` error.

![The Stack](https://github.com/emilydowdle/recursion-denver-rb/blob/master/stack_level_too_deep.png)


#### Problem #2: Appending an Array
**Mob Coding as a Group**

Create a recursive method that takes two parameters: an array and a number. 

```def append([], n)
  ?
end```

The method should append the array with every number from n to zero.

**Examples:** 
`append([], 2).inspect # = [2, 1, 0]`
`append([], 3).inspect # = [3, 2, 1, 0]`


#### Problem #3: Reverse Appending an Array
**Hot Seat Coding as a Group**

Create a recursive method that takes two parameters: an array and a number. 

```def reverse_append([], n)

  ?
  
end```

The method should append the array with every number from n to zero in reverse order.

**Examples:** 
`reverse_append([], 0) # [0]`
`reverse_append([], 1) # [0, 1]`
`reverse_append([], 2) # [0, 1, 2]`


#### Problem #4: Replicating Ruby's `.flatten` Method
**Hot Seat Coding as a Group**

`.flatten` takes multiple nested arrays and turns them into one 

**Example:**
`[[1, 3], [5, [7, 9]]].flatten` returns `[1, 3, 5, 7, 9]`

Write a problem that takes a group of nested arrays and flattens them into one. 
_Hint: You'll want *two* parameters — the original array and the flattened array._

```def flatten(arr, flattened=[])

  ?
  
end```
