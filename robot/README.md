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
* take an instruction sequence like `"LARA"` and cause a robot to turn left, advance, turn right, and advance

### Other Classes

Outside of `Robot` and `RobotSimulator`, you're welcome to create any classes/modules that are helpful to your implementation.

## Constraints

For each session you'll use one of the following constraints:

### A. Fundamentals

Get familiar with the project and use any and all tools/techniques you're comfortable with.

### B. Short Methods/Functions

Good programming tends to use short methods. Let's push that idea to an extreme.

In this session, **write no methods or functions longer than 3 lines**.

That's just counting the body of the method. Don't exceed 80 characters in line
length -- that's missing the point.

### C. If Statements & Keyboards

Corey Haines will tell you `if` statements aren't Object-Oriented Programming.

In this session, build your implementation **without any `if` statements**.

### D. Your Editor is Important

Work on being more efficient, **code without using the mouse**.

### E. A Single Line of Code

Pairing with someone you don't know can be a bit tough. It's hard to share the workload evenly.

In this session, alternate control of the typing after **each line of code**.

### F. Enjoy the Silence

Think you've got the hang of this problem? Pairing going well? Let's see how
well you can communicate through code.

In this session, **don't speak**.

### G. Functional Planes

In this session, implement your Robot in such a way that it has **no internal
usage of North, South, East, and West**.

Instead, implement a `Plane` which has a set of functions/methods that handlee
all the knowledge around directions and coordinates. If possible, implement
a second plane that uses *eight* directions to demonstrate your functionality.

### H. Tag & Dumb Keyboard

Programming is about communication. In this session, when you're on the keyboard
you should do **no thinking**. Instead, one half of the pair should serve as
the dumb typist, while the non-typing half dictates everything that should be written.

When the keyboardist says *"tag"* then the roles are swapped.

### I. Testing Is Dumb

Write the Robot without using automated tests. Think critically about what parts
of the development are faster and slower.

### J. Doing It Wrong

Stretch your thinking by intentionally writing long, ugly code. Every line
should push functionality forward, but use as many lines as you can. Think of it
like "un-factoring".
