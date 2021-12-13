
  # file = "numbers.txt"

  # input = File.open(file).readlines.map(&:chomp).map!(&:to_i)

def count_increasing_numbers(array)
  counter = 0
  array.each_with_index do |number, index|
    if number > array[index - 1]
      counter += 1
    end
  end
 counter
end


def count_increasing_sums
  file = "numbers.txt"
  input = File.open(file).readlines.map(&:chomp).map!(&:to_i)
  sum = []
  input.each_with_index do |number, index|
    break if index == input.length - 2
      sum << number + input[index + 1] + input[index + 2]
  end
  p count_increasing_numbers(sum)
end

count_increasing_sums
