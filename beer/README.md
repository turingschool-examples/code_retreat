# Beer Song

Write a program which produces the lyrics to that beloved classic, that field-trip favorite: 99 Bottles of Beer on the Wall.

## Goals

The goal of this exercise is *not* to pass all the tests. Instead, let's focus on the craft. Do you choose to...

* Implement a ton of features hacking ugly code?
* Implement just a few features and refactor them into beauty?
* Strike a balance in between?

## Notes

Note that not all verses are identical.

The verse for 1 bottle is as follows:

```plain
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
```

The verse for 0 bottles is as follows:

```plain
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
```

You can get multiple verses by passing in the verse to start from, and (optionally) the last verse to include.

## Expectations

During each work session you will pair program with another developer. Sessions may have one or more constraints that you're strongly encouraged to follow.

Included in this repo is `beer_song_test.rb` that will guide you.

### `BeerSong`

Implement a `sing` method that tells you which verses to output.

You are welcome to create any methods, classes, or modules that are helpful to your implementation.

## Schedule

* 9:30 -- Opening
* 10:00 -- Session 0
* 10:45 -- Session 1
* 11:30 -- Session 2
* 1:00 -- Session 3
* 1:45 -- Session 4

## Constraints

### Session 0 - Fundamentals

Get familiar with the project and use any and all tools/techniques you're comfortable with.

### Session 1 - DRY

One of the first rules of clean code is Don't Repeat Yourself (DRY). Write the code so that the duplication is minimized.

### Session 2 - Short Methods

Good Ruby tends to use short methods. Let's push that idea to an extreme.

In this session, **write no methods longer than 3 lines**.

The lines for the `def` and the matching `end` don't count, just the body of the method. Don't exceed 80 characters in line length or use semicolons -- that's missing the point.

### Session 3 - If Statements & Keyboards

Corey Haines will tell you `if` statements aren't Object-Oriented Programming.

In this session, build your implementation **without `if` statements**.

While you're working on being more efficient, **code without using the mouse**.

### Session 4 - A Single Line of Code

Pairing with someone you don't know can be a bit tough. It's hard to share the workload evenly.

In this session, alternate control of the typing after **each line of code**.

**And** let's bring back in the ideas of no method longer than 3 lines and not using the mouse.

### Session 5 - Enjoy the Silence

Think you've got the hang of this problem? Pairing going well? Let's see how well you can communicate through code.

In this session, **don't speak**. Communicate through code and, if you have to, comments.

### Session 6 - Dumb Keyboard

Programming is about communication. In this session, when you're on the keyboard you should do **no thinking**. Instead, one half of the pair should serve as the dumb typist, while the non-typing half dictates everything that should be done.

## For bonus points

Did you get the tests passing and the code clean? If you want to, these are some additional things you could try:

* Optimize for readability, even if it means introducing duplication.
* If you've removed all the duplication, do you have a lot of conditionals? Try applying the _Refactor Conditionals to Strategy Pattern_ refactoring. How readable is it?

