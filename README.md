# Speak to Grandma

## Objectives

1. Practice using flow control if if/else statements
2. Practice string manipulation

## Instructions

1. Fork and clone this lab.
2. Run the test suite using `rspec` or `learn`. You'll be coding your solution in `grandma.rb`.
3. Write a `speak_to_grandma` method. 
	* The method should take in an argument of a phrase and check to see if the phrase is written in all caps. If it isn't, then grandma can't hear you. She should respond with ""HUH?! SPEAK UP, SONNY!"
	* However, if you shout at her (i.e. call the method with an argument of a phrase that *is* in all caps, then she can hear you (or at least she thinks she can) and should respond with "NO, NOT SINCE 1938!"

**A few things to think about:**

* You'll need to use if/else statements to implement the logic of grandma responding with certain phrases based on whether or not you speak to her in all caps. 
* Think about how we can check to see if a string is all caps, or upcased. Check out the info on manipulating strings below. 


## Manipulating Strings

You'll need to check to see if the argument that the `speak_to_grandma` method takes is in a certain format (in this case, all capitals).

There are many methods on the [String class](http://www.ruby-doc.org/core-2.1.4/String.html) that manipulate strings. Let's take a look at a few:

```ruby
"Hello World".upcase
#=> "HELLO WORLD"
"Hello World".reverse
#=> "dlroW olleH" 
"Hello World".downcase
#=> "hello world" 
"Hello World".capitalize
#=> "Hello world" 
"Hello World".swapcase
#=> "hELLO wORLD" 
```

Which one can we use to check that the argument string (what you're saying to Grandma) is in all capitals? You can use the comparison or equality operator (`==`) to determine if the string you pass into your method call as an argument *matches* or is equal to that same string, upcased. 

