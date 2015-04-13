# Speller

Let's experiment with spell-checking English text.

## Need to Know

A Unix system has a built-in word list for English. You can see it by running:

```
cat /usr/share/dict/words
```

## Challenge

Write a spell checking system which can take in an arbitrary string of text,
including punctuation, and generate a list of the unknown/misspelled words.

If you get that complete, can you come up with a way to generate three suggestions
for each of the misspelled words?

## Protocol

### Session 1: Robo-"Tag"

You've probably heard of the "tag" technique. When the non-typing half
of your pair says "tag", then the typist needs to immediately take their hands
off the keyboard and turn over control.

For the first session, let's play with the idea of "tag". From this directory
run the following:

```
rake tag
```

It'll say "Tag! Tag! Tag!" every 60 seconds -- at which point you should
alternate control of the keyboard *even if you already switched within that minute*.

### Session 2: Dumb Keyboard

In the second session you can *either*:

* *type*, in which case you're not doing much of any thinking
* *think*, in which case you're not doing any typing -- only dictating

Let's *again* use the `rake tag` timer to switch control on short intervals.
