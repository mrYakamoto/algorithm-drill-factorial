# Algorithm Drill: Calculate a Factorial

## Summary
In this challenge we're going to write two solutions to the same problem.  We'll write two methods that behave the same way—they'll accept the same arguments and return the same values.  They'll differ in their implementations (i.e., how they do what they do).

The problem that we'll solve is calculating the factorial of a given number—more on what that means later.  We'll solve this problem by writing both an *iterative* solution and a *recursive* solution.  These approaches are useful when solving a problem requires repetitive execution.  


### Iterative Algorithms
```ruby
def countdown_script(number)
  script = String.new
  
  while number > 0
    script << "#{number} ... \n"
    number -= 1
  end
  
  script << "Blast off!"
end
```
*Figure 1*.  Iterative algorithm to generate a countdown script using a while loop.

While we might not recognize the name, we're probably familiar with writing [iterative](https://en.wikipedia.org/wiki/Iteration#Computing) algorithms.  What are some signs that we're writing an iterative algorithm?  Our methods involve looping—maybe with `while` or `until`.  We do something a certain number of times.  Or, when we iterate over the elements in an array.

In Figure 1 we see an iterative solution to generating a countdown script.  The method builds and returns a string.  It does so using a while loop:  as long as the variable number points to an integer greater than zero, the method will keep adding to the script.  Important factors in such a method are knowing when to break out of the loop and making sure that we'll eventually hit the break condition.  How are these done in the method in Figure 1?


### Recursive Algorithms
```ruby
def countdown_script(number)
  return "Blast off!" if number < 1
  "#{number} ... \n" + countdown_script(number - 1)
end
```
*Figure 2*.  Recursive solution to generating a countdown script.

Writing a [recursive](http://en.wikipedia.org/wiki/Recursion_%28computer_science%29) method is another approach to solving the same types of problems that we solve with iterative algorithms.  In Figure 2, we solve the same problem of generating a countdown script, but we do so using recursion.

One critical feature of writing a recursive method is the *base case*.  This is a known solution to the problem.  In generating a countdown script, we know that when we get below one, it's time for blast off.  In other words, we have our base case; if the number passed to our method is less than one, we'll just return the string `'Blast off!'` and be done.

"What are the base cases?" should be the first question we ask every time we want to approach a problem recursively. Many recursive problems have only one base case, but others have multiple base cases.

With our base case, we know what to return if the number passed to our method is zero or a negative number.  But otherwise, we need to build the script.  We do so in small steps.  We don't know exactly what the whole script will look like, but we know what one chunk of it looks like:  `"#{number} ... \n"`.

We just need to combine that chunk with the rest of the countdown script.  And, to generate the rest of the script, we'll call our `countdown_script` method again—this time for one number less than we had previously.  This is the most obvious feature of a recursive method:  the method calls itself.


### Calculating a Factorial
```
0! = 1
1! = 1
2! = 1 * 2
3! = 1 * 2 * 3
4! = 1 * 2 * 3 * 4
```
*Figure 3*.  Example factorial calculations

What is a [factorial](http://en.wikipedia.org/wiki/Factorial)?  For a given number, the factorial of that number is the product of all the positive integers less than or equal to the number itself.  To provide some examples, two factorial is equal to two times one.  Three factorial is equal to three times two times one.  Four factorial is equal to four times three times two times one. (see Figure 3; we denote a number's factorial as `n!`)

While this might sound very theoretical, calculating a factorial has real-world applications.  For example, calculating a factorial will tell us how many different ways we can arrange a set of items.  If we have ten books on a bookshelf, for example, there are `10!` different ways to order the books. In general, if we have a set of `n` items then there are `n!` ways to order them.

Looking back at Figure 3, we might notice that the calculation for three factorial shares some factors with two factorial:  they both include multiplying two times one.  And four factorial overlaps with three factorial:  calculating each involves multiplying three times two times one.

```
0! = 1
1! = 1 * 0!
2! = 2 * 1!
3! = 3 * 2!
4! = 4 * 3!
```
*Figure 4*.  Calculating a numbers factorial in terms of another factorial.

Because of this, we could say, for example, that four factorial is equal to four times three factorial.  Or, more generally, that the factorial of any number is equal to that number times the factorial of that number minus one. (see Figure 4)

*Note:* By convention, zero factorial is equal to one.




##Releases

###Release 0 : Factorial, Iteratively

Implement an iterative version of the factorial function called `factorial_iterative`. It should accept any non-negative integer as input. Don't worry about handling bad input. **Make sure tests pass**, and add your own tests (for example, `0!` is an edge case, probably worth testing).

###Release 1 :  Factorial, Recursively

Implement a recursive version of the factorial function called `factorial_recursive`. It should accept any non-negative integer as input. Don't worry about handling bad input. **Make sure you write tests** for your recursive solution to prove that it works correctly.

What's the largest value your recursive factorial function can take as its input before it crashes? What does the error mean?

##Resources

* [recursion](http://en.wikipedia.org/wiki/Recursion_%28computer_science%29)
* [factorial](http://en.wikipedia.org/wiki/Factorial)
