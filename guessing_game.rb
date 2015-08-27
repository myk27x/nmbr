secret_num = rand(1..100)
puts secret_num # check test line **REMOVE**
guesses = 0

puts "I'm thinking of a number from 1 to 100..."
puts "You only get 5 tries."
puts "What's your guess?"
guess = gets.to_i
guesses = guesses + 1
puts guesses # check test line **REMOVE**
puts guess # check test line **REMOVE**

while guesses <= 5
  if guess == secret_num
    puts "YOU GOT ME!"
    exit
  end
  if guesses == 5
    puts "NOPE! It was #{secret_num}!"
    puts "I WIN!!! YOU LOSE!!! I WIN!!! YOU LOSE!!!"
    exit
  end
  if guess < secret_num
    puts "Too low... try again..."
  else
    puts "Too high... try again..."
  end
  guess = gets.to_i
  guesses = guesses +1
  puts guesses # check test line **REMOVE**
  puts guess # check test line **REMOVE**
end
