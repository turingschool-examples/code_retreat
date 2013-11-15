## Battleship

Battleship is a classic game where players compete head-to-head shooting guns and sinking ships. [Wikipedia](http://bit.ly/1adZ8iz)

It is not this:

![battleship the movie](http://www.chscommunicator.com/wp-content/uploads/2012/10/giveaway-battleship630-jpg_2250282.jpg)

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
* The player tracks the shots they have taken on one board along with the results and the shots taken against them on their own board
* If each square of a boat has been hit, they player responds "hit, you sunk my [X]" where X is the name of the boat
* A player never gets more than one shot in a turn
* If all of a player's ships are sunk, the opponent wins
* Play does not stop until one player wins

## Code Retreat

### Iteration 1 - Open Build

For the first session, get together with your partner and see how much of the game you can put together using any techniques in your toolkit.

### Iteration 2 - Bottom Up

In the second iteration, start building from the bottom up. Write unit tests that model and validate the functionality of the individual ships, then a board, then a player, then the gameplay.

An example unit test for a ship might look like:

```
# Create a destroyer
#
# Hit it once
# 
# Confirm it is not sunk
# 
# Hit it again
#
# Confirm it is sunk
```

#### Constraint

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

#### Constraint

While building, look for and *reduce duplication* through techniques like...

* extracting and reusing modules
* extracting and reusing child objects
* metaprogramming

### Iteration 4 - Auto-Layout

Create a layout generator that can suggest patterns for laying out your ships. It could:

* Have a random mode that just places them anywhere
* Have a "tight" mode where each ship is touching at least one other ship to confuse the opponent
* Have a "sparse" mode where no ship is closer than 2 spaces from any other ship

#### Constraint

While building, don't talk. Communicate through the code.

### Iteration 5 - Artificial Intelligence

Rather than focusing on the core game functionality, in this iteration build an artificial intelligence bot to play against. It should:

* If the previous shot was a miss, take a shot at random.
* If the previous shot was a hit that sunk a ship, take a shot at random.
* If the previous shot was a hit that didn't sink a ship, shoot next to the previous shot attempting to find the rest of the ship

#### Constraint

Can you build it without `if` statements?