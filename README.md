# Algorithm Drill Factorial

##Learning Competencies

##Summary

We're going to write a Ruby method `factorial` to compute the [factorial](http://en.wikipedia.org/wiki/Factorial) of an integer. You've [done this before as an exercise](/exercises/21), so feel free to look at other students' solutions.

The focus this time around will be on understanding **[recursion](http://en.wikipedia.org/wiki/Recursion_%28computer_science%29)**.

If you don't remember, the **factorial** of a non-negative integer <span class="latex">n</span>, denoted <span class="latex">n!</span>, is the product of all positive integers less than <span class="latex">n</span>. For example,

<p style="text-align: center;">
  <span class="latex">
    \begin{aligned}
      5! & = 5 \cdot 4 \cdot 3 \cdot 2 \cdot 1 \\
      6! & = 6 \cdot 5 \cdot 4 \cdot 3 \cdot 2 \cdot 1 \\
         & \cdots \\
      n! & = n \cdot (n - 1) \cdot (n - 2) \cdots 2 \cdot 1
    \end{aligned}
  </span>
</p>

The factorial function wasn't pulled out of a mathematician's hat &mdash; it has a very concrete meaning. If you have 3 socks, for example, there are 3! = 6 ways to order those socks. In general, if you have a set of <span class="latex">n</span> things then there are <span class="latex">n!</span> ways to order those things.

By convention we define

<p style="text-align: center;">
  <span class="latex">
    \begin{aligned}
      0! = 1
    \end{aligned}
  </span>
</p>

so that we can formaly define the factorial as

<p style="text-align: center;">
  <span class="latex">
      n! =
      \begin{cases}
        1 & \mbox{if } n = 0 \\
        n \cdot (n-1)! & \mbox{otherwise}
      \end{cases}
  </span>
</p>

This definition is called **recursive** because we define the factorial of <span class="latex">n</span> in terms of the factorial of <span class="latex">n-1</span>. We stop at the **base case**, where <span class="latex">n = 0</span>.

## Learning Goals

This is your first run-in with **recursion** at DBC. It will seem strange at first, but you'll quickly get used to it. Eventually, you'll develop a kind of sixth sense and start saying things like, "This feels like a recursive problem."

The most important thing to understand is that every recursive problem has some number of **base cases**, the condition that acts like the "kick" from Inception, bumping you back up ever-closer to where you came from. The base case is the part of the recursive problem that is not defined in terms of itself.

"What are the base cases?" should be the first question you ask every time you want to approach a problem recursively. Many recursive problems have only one base case, but others have more.

## Objectives

### Factorial, Iteratively

Implement an iterative version of the factorial function called `factorial_iterative`. It should accept any non-negative integer as input. Don't worry about handling bad input.

### Factorial, Recursively

Implement a recursive version of the factorial function called `factorial_recursive`. It should accept any non-negative integer as input. Don't worry about handling bad input.

What's the largest value your recursive factorial function can take as its input before it crashes? What does the error mean?

##Releases
###Release 0

##Optimize Your Learning

##Resources