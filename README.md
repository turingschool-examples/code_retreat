# Robot Simulator

Welcome to the Robot Simulator!

## Goals

The goal of this exercise is *not* to pass all the tests. Instead, let's focus on the craft. Do you choose to...

* Implement a ton of features hacking ugly code?
* Implement just a few features and refactor them into beauty?
* Strike a balance in between?

## Expectations

During each work session you will pair program with another developer. Sessions may have one or more constraints that you're strongly encouraged to follow.

Included in this repo is `robot_test.rb` that will guide you.

### `Robot`

Create a Robot which:

* has coordinates on an x,y plane that specify her location
* has a bearing of north, south, east, or west
* can turn left and right
* can advance

### `RobotSimulator`

Beyond the robot itself, create a `RobotSimulator` which can...

* place a robot at an arbitrary coordinate with a bearing
* take an instruction sequence like `"LARA"` and cause a robot to turn left, advance, turn right, and advance.

### Other Classes

Outside of `Robot` and `RobotSimulator`, you're welcome to create any classes/modules that are helpful to your implementation.

## Schedule

* 9:00 -- Opening
* 9:30 -- Session 0
* 10:15 -- Session 1
* 11:00 -- Session 2
* 1:00 -- Session 3
* 1:45 -- Session 4

## Constraints

### Session 0

Get familiar with the project and use any and all tools/techniques you're comfortable with.

### Session 1

Good Ruby tends to use short methods. Let's push that idea to an extreme.

In this session, **write no methods longer than 3 lines**.

The lines for the `def` and the matching `end` don't count, just the body of the method. Don't exceed 80 characters in line length or use semicolons -- that's missing the point.

### Session 2

Corey Haines will tell you `if` statements aren't Object-Oriented Programming.

In this session, build your implemention **without `if` statements**.

While you're working on being more efficient, **code without using the mouse**.

### Session 3

Pairing with someone you don't know can be a bit tough. It's hard to share the workload evenly.

In this session, alternate control of the typing after **each line of code**.

**And** let's bring back in the ideas of no method longer than 3 lines and not using the mouse.

### Session 4

Think you've got the hang of this problem? Pairing going well? Let's see how well you can communicate through code.

In this session, **don't speak**. Communicate through code and, if you have to, comments.
