class Robot
  attr_reader :dir, :bearing

  def initialize
    @y_move = { :north => 1, :south => -1 }
    @x_move = { :east => 1,  :west => -1 }
  end

  def orient(bearing)
    raise ArgumentError unless [:east, :west, :north, :south].include? bearing
    @bearing = bearing 
  end

  def at(x, y)
    @x = x
    @y = y
  end

  def coordinates
    arr = []
    arr << @x
    arr << @y
  end 

  def advance
    case @bearing
      when :north then @y += 1
      when :south then @y += -1
      when :east then @x += 1
      when :west then @x += -1
    end
  end

  def turn_right
    case @bearing
      when :north then @bearing = :east
      when :east  then @bearing = :south
      when :south then @bearing = :west
      when :west  then @bearing = :north
    end
  end

  def turn_left
    case @bearing
      when :north then @bearing = :west
      when :east  then @bearing = :north
      when :south then @bearing = :east
      when :west  then @bearing = :south
    end
  end
end

class Simulator
  def instructions(move)
    @move = move.split ""
    @arr = []
    @move.each do |m|
      case m
        when "L" then @arr << :turn_left
        when "R" then @arr << :turn_right
        when "A" then @arr << :advance
      end
    end
    @arr
  end

  def place(robot, x, y, dir)
    robot.at(x, y)
    robot.orient(dir)
  end

  def evaluate(robot, movement)
    self.instructions(movement).each do |x|
      robot.send(x)
    end
  end
end
