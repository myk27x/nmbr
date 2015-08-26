# Your program should:

#  Pick a random number between 1 and 100
secret_num = rand(0...101)  # => 27
puts secret_num # check test line **REMOVE**

#  Prompt you for a guess
puts "I'm thinking of a number from 1 to 100..."
puts "Can you guess my number?"
puts "What's your guess?"
guess = gets
puts guess # check test line **REMOVE**

#  If your guess is less than the program's number, it should tell you that you were low and let you guess again.
#  If the guess is greater than the program's number, it should tell you that you were high and let you guess again.
#  If your guess is correct, the program should tell you that you win and then quit.
#  After 5 incorrect guesses, the program should tell you that you lose.
#  Your code should use at least two methods.
#  This game should be run from the command line by typing "ruby guessing_game.rb".

# >> 27
