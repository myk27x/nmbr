guesses = []
guess_count = 0
secret_num = rand(1..100)

def intro_border(message)
  puts " _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ "
  puts message
  puts " -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- "
end

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

intro_border("||I'm thinking of a number from 1 to 100...||
||       You only get 5 tries.             ||
||        What's your guess?               ||")

guess = gets.to_i
guess_count = guess_count + 1

def duh_check(message)
  puts message
end

while guess_count <= 5
  guesses.each do |x|
    if x == guess
      duh_check("Way to waste a guess... now I'll surely win!")
    end
  end
  if guess == secret_num
  sore_loser("YOU GOT ME!!!")
  exit
  end
  if guess_count == 5
    puts "NOPE! It was #{secret_num}!"
    sore_winner("||I WIN!!! YOU LOSE!!! I WIN!!! YOU LOSE!!!||")
    exit
  end
  if guess < secret_num
    puts "Too low... try again..."
  else
    puts "Too high... try again..."
  end
  guesses << guess
  guess = gets.to_i
  guess_count = guess_count +1
end
