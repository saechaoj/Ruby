class Element

    #Class variable and accessor
    attr_accessor :name
    
    #Constructor
    def initialize(name)
        @name = name
    end

    #Instance Method
    def compare_to(name)
        fail "This method should be overridden"
     end

end 


#Sub Class
class Rock < Element

    attr_accessor :name


    #Overriding Method
    def compare_to(name)
        if name  == 'Lizard'
            return 'Rocks crushes Lizard', "Wins"
        elsif name == 'Scissors'
            return 'Rock crushes Scissors',"Win"
        elsif name == 'Rock'
            return 'Rock equals Rock',"Tie"
        elsif name == 'Paper'
            return 'Paper covers Rock',"Lose"
        end
        
    end
        
end


#Sub Class
class Paper < Element
    
    attr_accessor :name

    #Overriding Method
    def compare_to(name)
        if name == 'Rock'
            return 'Paper covers Rock', "Wins"
        elsif name == 'Sprock'
            return 'Rock disapporves Sprock', "Wins"
        elsif name == 'Paper'
            return 'Paper equals Paper' "Tie"
        end
        
        
    end
end


#Sub Class
class Scissors < Element
    
    #Overriding Method
    def compare_to(name)
        if name == 'Paper'
            return 'Scissors cuts Paper',"Wins"
        elsif name == 'Lizard'
            return 'Scissors decapitates Lizard',"Wins"
        elsif name == 'Scissors'
            return 'Scissors equals Scissors',"Tie"
        end
        
    end
end


#Sub Class
class Lizard < Element
 
    #Overriding Method
    def compare_to(name)
        if name == 'Sprock'
            return 'Lizards poisons Sprock',"Wins"
        elsif name == 'Paper'
            return 'Lizard eats Paper',"Wins"
        elsif name == 'Lizard'
            return 'Lizard equals Lizard',"Tie"
        end
        
    end
end


#Sub Class
class Spock < Element
    
    #Overriding Method
    def compare_to(name)
        if name == 'Scissors'
            return 'Sprock smashes Scissors',"Wins"
        elsif name == 'Rock'
            return 'Sprock vaporizes Rock',"Wins"
        elsif name == 'Sprock'
            return 'Sprock equals Sprock',"Tie"
        end
        
    end


end


# $Rock = Rock.new('Rocks')
# $Paper = Paper.new("Paper")
# $Scissors = Scissors.new("Scissors")
# $Lizzard = Lizard.new('Lizard')
# $Spock = Spock.new('Sproke')

rock  = Rock.new('Rock')
paper = Paper.new('Paper')



puts rock.compare_to(paper)
# puts paper.compare_to(rock)
# puts rock.compare_to(rock)