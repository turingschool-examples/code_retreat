# String Games

Let's experiment with some small string puzzles.

## Challenges

Complete one or more of the following challenges as your time
allows. You may work on them in any order you choose.

### Palindrome-Ness

Write code to determine if a given string of characters is
or is not a palindrome.

* Level 1: Use whatever tools are helpful
* Level 2: Don't use `.reverse`
* Level 3: Don't use `.reverse` or any form of Array

### Sentence Reversal

Compute the reversal of a sentence. For example, `"This is a sample sentence"`
becomes "sentence sample a is This".

* Level 1: Use whatever tools are helpful
* Level 2: Don't use any form of Array
* Level 3: Use only strings, conditionals, and `each_char`
* Level 4: Manipulate the string in place rather than creating a new one

### Run Length Encoding/Decoding

Run length encoding is a compression technique that allows us
to represent strings with repeated characters in fewer total characters.

For instance, examine the following examples:

* `aaaabbbbbcccccc` becomes `4a5b6c`
* `abcccaaa` becomes `ab3c3a`

Implement functionality to both encode normal strings using
run-length and decode the results.

* Level 1: Use whatever tools are helpful
* Level 2: Can you do the encoding/decoding *without creating any new string objects*?

## Protocols

Use the following protocols for your pairing sessions:

### 50/50

Spend the first half of your session in silence working by yourself.
When the facilitator instructs you to begin pairing, choose whichever
of your two solutions has been *less* successful. Pair normally to make
as much progress as you can for the rest of the period.

*Think About*: Did you move faster or slower when pairing? How was your
thinking different between the first minutes you were grappling with the
problem and the latter when you were more focused on implementation?

### One Liner

We often talk about pairs quickly alternating responsibility. In this
session you're tasked with only writing a single line of text before
alternating responsibility.

* If one person writes the `def test_it_does_something`, then the other
person writes the first line of the implementation.
* If one person finishes the implementation of a method, the other person
writes the `end`
* Push yourself to write many short lines with quick alternation, not
fewer lines with greater complexity.
