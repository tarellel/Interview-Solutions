# My solution to creating a FizzBuzz function that will process a specified number
def fizzbuzz(max = 100)
  1.upto(max).each do |num|
    div3 = (num % 3).zero?
    div5 = (num % 5).zero?

    case
    when div3 && div5
      puts "#{num}: FizzBuzz"
    when div3
      puts "#{num}: fizz"
    when div5
      puts "#{num}: buzz"
    # If you are required to output any unmatched numbers
    # else puts num
    end
  end
end

fizzbuzz(100)
