# Guide to Solving Speaking Grandma

After reading the `README.md` we should start with defining our `speak_to_grandma` method.

```ruby
def speak_to_grandma
end
```

We are getting this error message, when we run `rspec`

```bash
#speak_to_grandma
  responds with HUH?! SPEAK UP, SONNY! unless you are shouting (FAILED - 1)
  responds with NO, NOT SINCE 1938! when she can hear you (FAILED - 2)

Failures:

  1) #speak_to_grandma responds with HUH?! SPEAK UP, SONNY! unless you are shouting
     Failure/Error: expect(speak_to_grandma('Hi Nana, how are you?')).to eq 'HUH?! SPEAK UP, SONNY!'
     ArgumentError:
       wrong number of arguments (1 for 0)
```

Wrong number of arguments means it was expecting that we pass an argument to our method, which we did not. Now lets do that and see our error message change.

```ruby
def speak_to_grandma(phrase)
end
```
The changed error message is 

```bash
#speak_to_grandma
  responds with HUH?! SPEAK UP, SONNY! unless you are shouting (FAILED - 1)
  responds with NO, NOT SINCE 1938! when she can hear you (FAILED - 2)

Failures:

  1) #speak_to_grandma responds with HUH?! SPEAK UP, SONNY! unless you are shouting
     Failure/Error: expect(speak_to_grandma('Hi Nana, how are you?')).to eq 'HUH?! SPEAK UP, SONNY!'
       
       expected: "HUH?! SPEAK UP, SONNY!"
            got: nil
```

In the `README.md` the instructions are to write a method that will return `"HUH?! SPEAK UP, SONNY!"` if the argument/ phrase we pass in are all downcase and `"NO, NOT SINCE 1938!"` if the argument is all in caps.

Lets try to write an `if-statement` for when the phrase we pass in is **not** in caps.

```ruby
def speak_to_grandma(phrase)
  if phrase != phrase.upcase()
    return "HUH?! SPEAK UP, SONNY!"
  end
end
```
Now we have one test passing.

```bash
#speak_to_grandma
  responds with HUH?! SPEAK UP, SONNY! unless you are shouting
  responds with NO, NOT SINCE 1938! when she can hear you (FAILED - 1)

Failures:

  1) #speak_to_grandma responds with NO, NOT SINCE 1938! when she can hear you
     Failure/Error: expect(speak_to_grandma('WHAT DID YOU EAT TODAY?')).to eq "NO, NOT SINCE 1938!"
       
       expected: "NO, NOT SINCE 1938!"
            got: nil
       
       (compared using ==)
```
Ok, to pass our last test we need to add an `else-statement` to our `if-clause`.

```ruby
def speak_to_grandma(phrase)
  if phrase != phrase.upcase()
    return "HUH?! SPEAK UP, SONNY!"
  else
    return "NO, NOT SINCE 1938!"
  end
end
```

All our tests should be passing now!