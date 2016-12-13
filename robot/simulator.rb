class Robot
  attr_reader :dir, :bearing, :coordinates

  def initialize
    @y_move = { :north => 1, :south => -1 }
    @x_move = { :east => 1,  :west => -1 }
  end

  def orient(bearing)
    raise ArgumentError unless valid_dir.include? bearing
    @bearing = bearing 
  end

  def turn_right
    @bearing = valid_dir[current_pos - (valid_dir.length - 1)]
  end

  def turn_left
    @bearing = valid_dir[current_pos - 1]
  end

  def at(x, y)
    @x = x
    @y = y
  end

  def coordinates
    [@x, @y]
  end 

  def advance
    case @bearing
      when :north then @y += 1
      when :east then @x += 1
      when :south then @y += -1
      when :west then @x += -1
    end
  end

  def current_pos
    valid_dir.index(@bearing)
  end

  def valid_dir
    [:north, :east, :south, :west] 
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
