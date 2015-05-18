---
tags: logic, conditionals, string manipulation, method arguments
language: ruby
resources: 2
---

# Speak to Grandma

Write a `speak_to_grandma` method.

Whatever you say to grandma, she should respond with "HUH?! SPEAK UP, SONNY!", unless you shout it (type in all capitals).

If you shout, she can hear you (or at least she thinks so) and yells back: "NO, NOT SINCE 1938!"

## Manipulating Strings

You'll need to check to see if the input (the string) is in a certain format (in this case, all capitals).

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

Which one can we use to check that the input string (what you're saying to Grandma) is in all capitals?

