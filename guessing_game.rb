secret_num = rand(1..100)
puts secret_num # check test line **REMOVE**

puts "I'm thinking of a number from 1 to 100..."
puts "Can you guess my number?"
puts "What's your guess?"
guess = gets.to_i
puts guess # check test line **REMOVE**

  if guess < secret_num
    puts "Too low... try again..."

  else
    puts "Too high... try again..."

  end
  guess = gets.to_i
