def sore_winner(message)
  puts " _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ "
  puts message
  puts " -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- "
end

def sore_loser(message)
  puts [".", ".", ".", ".", ".", ".", ".", ".", ".", ".", "."]
  puts message
  puts " ::DIES:: "
end

guesses = 0
secret_num = rand(1..100)

puts "I'm thinking of a number from 1 to 100..."
puts "You only get 5 tries."
puts "What's your guess?"
guess = gets.to_i
guesses = guesses + 1

while guesses <= 5
  if guess == secret_num
    sore_loser("YOU GOT ME!!!")
    exit
  end
  if guesses == 5
    puts "NOPE! It was #{secret_num}!"
    sore_winner("||I WIN!!! YOU LOSE!!! I WIN!!! YOU LOSE!!!||")
    exit
  end
  if guess < secret_num
    puts "Too low... try again..."
  else
    puts "Too high... try again..."
  end
  guess = gets.to_i
  guesses = guesses +1
end
