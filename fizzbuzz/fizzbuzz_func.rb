# My solution to creating a FizzBuzz function that will process a specified number
def fizzbuzz(max = 100)
  1.upto(max).each do |num|
    div3=(num % 3 == 0)
    div5=(num % 5 == 0)

    case
      when(div3 && div5)
        puts "#{num}: FizzBuzz"
      when(div3)
        puts "#{num}: fizz"
      when(div5)
        puts "#{num}: buzz"
    end
  end

end

fizzbuzz(100)