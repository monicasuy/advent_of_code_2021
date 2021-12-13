
def get_directions
  file = "directions.txt"
  input = File.open(file).readlines.map(&:chomp)
  horizontal = 0
  depth = 0
  input.each do |direction|
    if direction.include? "forward"
      horizontal += direction.slice((direction.length) - 1).to_i
    elsif direction.include? "down"
      depth += direction.slice((direction.length) -1).to_i
    elsif direction.include? "up"
      depth -= direction.slice(direction.length - 1).to_i
    else
      horizontal -= direction.slice(direction.length-1).to_i
    end
  end
  puts horizontal
  puts depth
  puts horizontal * depth
end

# get_directions

def get_aim
  file = "directions.txt"
  input = File.open(file).readlines.map(&:chomp)
  horizontal = 0
  depth = 0
  aim = 0
  input.each do |direction|
    if direction.include? "forward"
      horizontal += direction.slice(direction.length - 1).to_i
      depth += aim * (direction.slice(direction.length - 1).to_i)
    elsif direction.include? "down"
      aim += direction.slice(direction.length - 1).to_i
    elsif direction.include? "up"
      aim -= direction.slice(direction.length - 1).to_i
    else
      horizontal -= direction.slice(direction.length - 1).to_i
      depth -= aim * direction.slice(direction.length - 1).to_i
    end
  end
  puts aim
  puts horizontal
  puts depth
  puts horizontal * depth
end

get_aim
