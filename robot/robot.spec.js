var api = require('./simulator');
var Robot = api.Robot;
var Simulator= api.Simulator;

describe("Robot", function() {
  var robot = new Robot();

  it("robot bearing", function() {
    var directions = [ 'east', 'west', 'north', 'south' ];

    for (var i = 0; i < directions.length; i++) {
      var currentDirection = directions[i];
      robot.orient(currentDirection)
      expect(robot.bearing).toEqual(currentDirection);
    };
  });

  xit("invalid robot bearing", function() {
    try {
      robot.orient("crood");
      throw "Test: Robot#orient did not throw an exception";
    } catch(exception) {
      expect(exception).toEqual("Invalid Robot Bearing");
    }
  });

  xit("turn right from north", function() {
    robot.orient('north');
    robot.turnRight();
    expect(robot.bearing).toEqual('east');
  });

  xit("turn right from east", function() {
    robot.orient('east');
    robot.turnRight();
    expect(robot.bearing).toEqual('south');
  });

  xit("turn right from south", function() {
    robot.orient('south');
    robot.turnRight();
    expect(robot.bearing).toEqual('west');
  });

  xit("turn right from west", function() {
    // TODO: TO BE IMPLEMENTED
  });

  xit("turn left from north", function() {
    // TODO: TO BE IMPLEMENTED
  });

  xit("turn left from east", function() {
    // TODO: TO BE IMPLEMENTED
  });

  xit("turn left from south", function() {
    // TODO: TO BE IMPLEMENTED
  });

  xit("turn left from west", function() {
    robot.orient('west');
    robot.turnLeft();
    expect(robot.bearing).toEqual('south');
  });

  xit("robot coordinates", function() {
    robot.at(3, 0);
    expect(robot.coordinates()).toEqual([3,0]);
  });


  xit("other robot coordinates", function() {
    robot.at(-2, 5);
    expect(robot.coordinates()).toEqual([-2,5]);
  });

  xit("advance when facing north", function() {
    robot.at(0,0);
    robot.orient('north');
    robot.advance();
    expect(robot.coordinates()).toEqual([0,1]);
  });

  xit("advance when facing east", function() {
    // TODO: TO BE IMPLEMENTED
  });

  xit("advance when facing south", function() {
    // TODO: TO BE IMPLEMENTED
  });

  xit("advance when facing west", function() {
    // TODO: TO BE IMPLEMENTED
  });

});


describe("Simulator", function() {
  var simulator = new Simulator();

  xit("instructions for turning left",function() {
    expect(simulator.instructions("L")).toEqual("turnLeft");
  });

  xit("instructions for turning right",function() {
    // TODO: TO BE IMPLEMENTED
  });

  xit("instructions for advancing",function() {
    // TODO: TO BE IMPLEMENTED
  });

  xit("series of instructions",function() {
    var commands = ['turnRight', 'advance', 'advance', 'turnLeft'];
    expect(simulator.instructions("RAAL")).toEqual(commands);
  });

  xit("instruct robot",function() {
    robot = new Robot();
    simulator.place(robot,{ x: -2, y: 1, direction: 'east' });
    simulator.evaluate(robot, "RLAALAL");
    expect(robot.coordinates()).toEqual([0,2]);
    // TODO: Also check the robot bearing
  });

  xit("instruct many robots",function() {
    var robot1 = new Robot();
    var robot2 = new Robot();
    var robot3 = new Robot();
    simulator.place(robot1,{ x: 0, y: 0, direction: 'north' });
    simulator.place(robot2,{ x: 2, y: -7, direction: 'east' });
    simulator.place(robot3,{ x: 8, y: 4, direction: 'south' });
    simulator.evaluate(robot1, "LAAARALA");
    simulator.evaluate(robot2, "RRAAAAALA");
    simulator.evaluate(robot3, "LAAARRRALLLL");

    // TODO: Check Robot 1 coordinates and bearing
    // TODO: Check Robot 2 coordinates and bearing
    // TODO: Check Robot 3 coordinates and bearing
  });

});
