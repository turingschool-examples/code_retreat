## Battleship

Battleship is a classic game where players compete head-to-head. [Wikipedia](http://en.wikipedia.org/wiki/Battleship_(game))

### Pre-Game Layout

* Each player has a 10x10 grid and can position each of their ships either vertically or horizontally
* The columns are labeled A-L and the rows 1-10. A1 is the top left square and L10 the bottom right.
* Ships may not overlap or go off the board
* There are five ships which must each be placed by the player:
  * Aircraft Carrier - 5 squares
  * Battleship - 4 squares
  * Submarine - 3 squares
  * Cruiser - 3 squares
  * Destroyer - 2 squares

### The Rules

* Each turn, a player calls out one shot onto the other player's board.
* The player being shot at responds with either "hit" or "miss"
* If each square of a boat has been hit, they player responds "hit, you sunk my [X]" where X is the name of the boat
* A player never gets more than one shot in a turn
* If all of a player's ships are sunk, the opponent wins
* Play does not stop until one player wins

## Code Retreat

### Iteration 1 - Open Build

For the first session, get together with your partner and see how much of the game you can put together using any techniques in your toolkit.

### Iteration 2 - Bottom Up

In the second iteration, start building from the bottom up. Write unit tests that model and validate the functionality of the individual ships, then a board, then a player, then the gameplay.

While building, write *no method longer than three lines*.

### Iteration 3 - Top Down

In the third iteration, begin by writing an "acceptance test" which interacts with the code from the user perspective. Pseudocode for such a test might be:

```
# Start with a board where four ships are sunk and
# the remaining destroyer has one hit
#
# The other player shoots, hitting and sinking the destroyer
#
# The response shows that the destroyer was sunk and the game is won
```

Use that test, which touches multiple components, to drill down to the integration or unit test levels and drive the design of your game, board, and ships.

While building, look for and *reduce duplication* through techniques like...

* extracting and reusing modules
* extracting and reusing child objects
* metaprogramming
