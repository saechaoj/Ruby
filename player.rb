

class Player

    #Class variable and accessor
    require_relative "element"
    require_relative "history"
    attr_reader :name, :history


    #Constructor
    def initialize(name,history)
        @name = name
        @history = history
    end

    #Instance Method
    def play()
        fail "This method should be overridden"
        end




end

#Sub Class
class StupidBot < Player

    #Overriding Method

    def play()

        history.log_opponent_play(Rock.new("Rock"))
        return Rock.new("Rock")
        end
   
        
end



#Sub Class
class RandomBot < Player


    #Overriding Method

    def play()
        num = rand(1..5)
        if num == 1
            history.log_opponent_play(Rock.new("Rock"))
            return Rock.new("Rock")
        elsif num == 2
            history.log_opponent_play(Paper.new("Paper"))
            return Paper.new("Paper")
        elsif num == 3
            history.log_opponent_play(Scissors.new("Scissors"))
            return Scissors.new("Scissors")
        elsif num == 4
            history.log_opponent_play(Lizard.new("Lizard"))
            return Lizard.new("Lizard")
        elsif num == 5
            history.log_opponent_play(Spock.new("Spock"))
            return Spock.new("Spock")
        end

    end
   
        
end


#Sub Class
class IterativeBot < Player

    #Overriding Method
    def play()


        num = history.opponent_plays.length
        num = num + 1
        if num == 1
            history.log_opponent_play(Rock.new("Rock"))
            return Rock.new("Rock")
        elsif num == 2
            history.log_opponent_play(Paper.new("Paper"))
            return Paper.new("Paper")
        elsif num == 3
            history.log_opponent_play(Scissors.new("Scissors"))
            return Scissors.new("Scissors")
        elsif num == 4
            history.log_opponent_play(Lizard.new("Lizard"))
            return Lizard.new("Lizard")
        elsif num == 5
            history.log_opponent_play(Spock.new("Spock"))
            return Spock.new("Spock")
        end



    end

        
end

#Sub Class
class LastPlayBot < Player

    #Overriding Method

    def play()
        
        if history.plays.empty?
            return Rock.new("Rock")
        else
            return history.plays[-1]
        end

    end
     
end


#Sub Class
class Human < Player

    #Overriding Method


    def play()

        i = 1

        while i > 0

            puts "Choose your move"
            puts '(1)Rock'
            puts '(2)Paper'
            puts '(3)Scissors'
            puts '(4)Lizard'
            puts '(5)Spock'
            puts 'Enter your move : '
            choice = gets.to_i

            if choice == 0 || choice > 5
                puts "Invalid move, try again"

            else
                

                if choice == 1
                    history.log_play(Rock.new("Rock"))
                    return Rock.new("Rock")
                elsif choice == 2
                    history.log_play(Paper.new("Paper"))
                    return Paper.new("Paper")
                elsif choice == 3
                    history.log_play(Scissors.new("Scissors"))
                    return Scissors.new("Scissors")
                elsif choice == 4
                    history.log_play(Lizard.new("Lizard"))
                    return Lizard.new("Lizard")
                elsif choice  == 5
                    history.log_play(Spock.new("Spock"))
                    return Spock.new("Spock")
                end
    
      
            end
        end

    
    end
     
end




#Test
# p1 = StupidBot.new('StupidBot', History.new)
# p2 = RandomBot.new('RandomBot', History.new)
# p1move = p1.play()
# p2move = p2.play()


# puts p1move.compare_to(p2move)

