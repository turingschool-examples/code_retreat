class Board
  attr_reader :cells

  def initialize
    @cells = Array.new(10){ Array.new(10) }
  end

  def place(content, start_coordinates, end_coordinates)
    cells_from(start_coordinates, end_coordinates).each_with_index do |address, position|
      cells[address.first][address.last] = [content, position]
    end
  end

  def cells_from(start_coordinates, end_coordinates)
    start_target = convert(start_coordinates)
    end_target = convert(end_coordinates)
    results = []
    (start_target.first..end_target.first).each do |x|
      (start_target.last..end_target.last).each do |y|
        results << [x,y]
      end
    end
    results
  end

  def fetch(coordinates)
    target = convert(coordinates)
    cells[target.first][target.last]
  end

  def fire_at(coordinates)
    content, position = fetch(coordinates)
    content.hit(position) if content
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