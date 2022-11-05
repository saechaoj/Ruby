

class Player

    #Class variable and accessor
    require_relative "element"
    require_relative "history"
    attr_reader :name, :history

    @@name
    @@history

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
        return "Rock","Rock"
        end
   
        
end



#Sub Class
class RandomBot < Player

    #Overriding Method

    def play()
        num = rand(1..5)
        if num == 1
            return 'Rock','Rock'
        elsif num == 2
            return "Paper","Paper"
        elsif num == 3
            return "Scissors","Scissors"
        elsif num == 4
            return "Lizard","Lizard"
        elsif num == 5
            return "Spock","Spock"
        end

    end
   
        
end


#Sub Class
class IterativeBot < Player

    #Overriding Method
    def play()


        num = 1
        while num  >= 0

            if num == 1
                num = num + 1
                return 'Rock','Rock'
            elsif num == 2
                num = num + 1
                return "Paper","Paper"
            elsif num == 3
                num = num + 1
                return "Scissors","Scissors"
            elsif num == 4
                num = num + 1
                return "Lizard","Lizard"
            elsif num == 5
                return "Spock","Spock"
            end

        end

    end

        
end

#Sub Class
class LastPlayBot < Player

    #Overriding Method

    def play()
        
        if @history == NULL
            return 'Rock','Rock'
        else
            return @history, @history
        end

    end
     
end


#Sub Class
class Human < Player

    #Overriding Method

    def play()
        puts '(1)Rock'
        puts '(2)Paper'
        puts '(3)Scissors'
        puts '(4)Lizard'
        puts '(5)Spock'
        puts 'Enter your move : '
        choice = gets

        if choice > 5
            puts "Invalid choice select again!"
        
        end
    end
     
end




s = Human.new("Rock","History")
puts s.play()