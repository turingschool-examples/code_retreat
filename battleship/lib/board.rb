class Board
  attr_reader :cells

  def initialize
    @cells = Array.new(10){ Array.new(10) }
  end

  def place(content, coordinates)
    target = convert(coordinates)
    cells[target.first][target.last] = content
  end

  def fetch(coordinates)
    target = convert(coordinates)
    cells[target.first][target.last]
  end

  def convert(coordinates)
    x = lookup(coordinates.first)
    y = coordinates.last.to_i - 1
    [x,y]
  end

  def lookup(letter)
    letter_indices[letter]
  end

  def letter_indices
    {"A" => 0,
     "B" => 1,
     "C" => 2,
     "D" => 3,
     "E" => 4,
     "F" => 5,
     "G" => 6,
     "H" => 7,
     "I" => 8,
     "J" => 9}
  end
end