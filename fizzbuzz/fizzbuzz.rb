# Up the 100th number
1.upto(100).each do |num|
  div3 = (num % 3).zero?
  div5 = (num % 5).zero?

  case
  when div3 && div5
    puts "#{num}: FizzBuzz"
  when div3
    puts "#{num}: fizz"
  when div5
    puts "#{num}: buzz"
  end
end
