# Code Retreat

In this repository you'll find several exercises which can be used for code retreats.

## Protocol

1. Pick an exercise
2. Pick a constraint
3. Work with a pair, following the constraint, for a single session (~40 minutes)
4. At the end, run `rake reset` to clear your work

## Rake Tasks

For your convinience, there are a few Rake tasks provided:

### `rake reset`

At the end of a session, run `rake reset` in your terminal to blow away any changes not comitted to git

### `rake timer` or `rake timer[length]`

Use this timer to auto-reset every `length` minutes. The default is four minutes, a constraint to help you focus on small steps.

### `rake start` or `rake start[length]`

Use this task to automate creating a feature branch and running the timer for a single session.
