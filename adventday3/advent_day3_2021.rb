
def get_sum
  file = "binary.txt"
  input = File.open(file).readlines.map(&:chomp)
  counter_0 = 0
  counter_1 = 0
  input.each_with_index do |number, index|
    array = []
    array << "#{number.split(//)}".to_i
    puts array
    # array.each_with_index do |num, index|
    #   if num[index] == 0
    #     counter_0 += 1
    #   else
    #     counter_1 += 1
    #   end
    # end
  end

  puts counter_0
  puts counter_1
end

get_sum

# lines = File.readlines("binary.txt")

# def dl(lines, m)
#   12.times do |pos|
#     rs = lines.map(&:chars).map { |s| s[pos] }.tally
#               .sort_by { |k, v| [v * m, k.ord * m] }
#     lines.select! { |l| l[pos] == rs[1][0] }
#     break lines.first.to_i(2) if lines.size == 1
#   end
# end

# p dl(lines.dup, 1) * dl(lines.dup, -1)
