require 'benchmark'
# used to verify nugget order/package sizes
# http://www.mcdonalds.com/us/en/food/product_nutrition.chickenfish.483.chicken-mcnuggets-4-piece.html
# http://www.mcdonalds.com/us/en/meal_builder_us.html

def sum_of_array?(combo, max_count)
  !!combo.combination(4).detect{ |a,b,c,d|
    (a*4) + (b*6) + (c*10) + (d*20) == max_count
  }
end

# the number that we are trying to find combinations for
max_count = 1000

# number of times the number can be used in order to get to be used to reach MAX_COUNT
four_limit   = (max_count/4).round
six_limit    = (max_count/6).round
ten_limit    = (max_count/10).round
twenty_limit = (max_count/20).round

# an array containing all possible nugget order combinations
combinations = []

# write Processed combos to file
output = File.open("combos.txt",'w')

# Create header so you can identify the column
nugget_header = <<EOF
| ----- | Package Sizes | ------ |
|4piece, 6piece, 10piece, 20piece|
| ----- | ----- | ----- | ------ |
EOF
output << nugget_header + "\n"


process_time = Benchmark.measure{
  # number of 4 piece packages
  for four in 0..four_limit

    # number of 6 piece packages
    for six in 0..six_limit

      # number of 10 piece packages
      for ten in 0..ten_limit

        # number of 20 piece packages
        for twenty in 0..twenty_limit

          # current combo set
          combo = [four, six, ten, twenty]
          if(sum_of_array?([four, six, ten, twenty], max_count))
            #combinations.push(combo)
            combinations << combo
            output << (combo.to_s + "\n")
          end

        end
      end
    end
  end
}
output.close


puts "========================================"
puts "Total combinations: #{combinations.uniq.count}"
puts "Process Time: #{process_time}"
puts "========================================\n"

answer = 'n'
puts "View possible combinations? (y/n)"
answer = gets.chomp

if answer == 'y'
  combinations.each do |combo|
    puts combo.to_s + '(' + ((combo[0]*4) + (combo[1]*6) + (combo[2]*10) + (combo[3]*20)).to_s + ')'
  end
end

