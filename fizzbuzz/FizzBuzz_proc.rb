def fizzbuzz(max=100)
  # Proc to test each number against
  fizz = Proc.new do |num|
    str = ''
    # boolean tests to determine if the number matches the specified test
    div3, div5 = (num % 3).zero?, (num % 5).zero?

    # test whether the number matches either 3 and/or 5 and added the specified string
    str += 'Fizz' if div3
    str += 'Buzz' if div5

    puts str.empty? ? num : str
  end
  # loop through the specified number range
  (1..max).each(&fizz)
end
fizzbuzz(15)
