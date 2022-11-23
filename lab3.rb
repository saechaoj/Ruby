require_relative "element"   # uncomment to load element.rb
require_relative "player"    # uncomment to load player.rb
require_relative "history"   # uncomment to load history.rb

#########################################
#     CS 381 - Programming Lab #3		#
#										#
#  < Jarrod Saechao >					 	#
#  < saechaoj@oregonstate.edu >	                	#
#										#
#########################################



# your code here



def game(rounds)

	# your code here

	puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
	i = 1
	while i > 0

		puts "Please choose two players:"
		puts "(1) StupidBot"
		puts "(2) RandomBot"
		puts "(3) IterativeBot"
		puts "(4) LastPlayBot"
		puts "(5) Human"

		puts "Select player 1: " 
		x = gets.chomp.to_i
		puts "Select player 2: "
		y = gets.chomp.to_i

	
		if x <= 0 || y <= 0
			puts "Invalid choice(s) - start over"

		elsif x > 5 || y > 5
			puts "Invalid choice(s) - start over"

		else

			i = 0
	
		end


	end


	if x == 1 
		p1 = StupidBot.new('StupidBot', History.new)
	elsif x == 2
		p1 = RandomBot.new('RandomBot', History.new)
	elsif x == 3
		p1 = IterativeBot.new('IterativeBot', History.new)
	elsif x == 4 
		p1 = LastPlayBot.new('LastPlayBot',History.new)
	elsif x == 5
		p1 = Human.new('Human',History.new)

	end

	if y == 1 
		p2 = StupidBot.new('StupidBot', History.new)
	elsif y == 2
		p2 = RandomBot.new('RandomBot', History.new)
	elsif y == 3
		p2 = IterativeBot.new('IterativeBot', History.new)
	elsif y == 4 
		p2 = LastPlayBot.new('LastPlayBot', History.new)
	elsif y == 5
		p2 = Human.new('Human', History.new)
	end
	
	puts "Select player 1: Select player 2: #{p1.name} vs #{p2.name} "
	counter = 1

	while  counter <= rounds

		#Get Element and set return variables for comparison

		p1move = p1.play()
		p2move = p2.play()

		puts "Round #{counter}: "
		returnOne, returnTwo =  p1move.compare_to(p2move)


		puts "Player 1 chose : #{p1move.name}"
		puts "Player 2 chose : #{p2move.name}"
		puts "#{returnOne}"


		#Score tracker
		if returnTwo == "Wins"
			p1.history.add_score
			puts "Player 1 won the round\n\n"
	
		elsif returnTwo == "Lose"
			p2.history.add_score
			puts "Player 2 won the round\n\n"

		else
			puts "Round was a tie\n\n"

		end 

		counter = counter + 1


	end


	puts "Final  score is #{p1.history.score} to #{p2.history.score}"


	if p1.history.score > p2.history.score
		puts "Player 1 Wins!"
	
	elsif p1.history.score < p2.history.score
		puts "Player 2 Wins"

	else
		puts "Game was a draw"
	end

end



	

# Main Program (should be last)
n_rounds = 5
# call to kick off the game
game(n_rounds)
