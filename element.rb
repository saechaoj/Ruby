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

        if name.name  == 'Lizard'
            return 'Rock crushes Lizard', "Wins"
        elsif name.name == 'Scissors'
            return 'Rock crushes Scissors',"Wins"
        elsif name.name == 'Rock'
            return 'Rock equals Rock',"Tie"
        elsif name.name == 'Paper'
            return 'Paper covers Rock',"Lose"
        elsif name.name == 'Spock'
            return 'Spock vaporizes Rock',"Lose"
        end
        
    end
        
end


#Sub Class
class Paper < Element
    
    attr_accessor :name

    #Overriding Method
    def compare_to(name)
        if name.name == 'Rock'
            return 'Paper covers Rock', "Wins"
        elsif name.name == 'Spock'
            return 'Rock disapporves Spock', "Wins"
        elsif name.name == 'Paper'
            return 'Paper equals Paper' "Tie"
        elsif name.name == 'Scissors'
                return 'Scissors cuts Paper',"Lose"
        elsif name.name == 'Lizard'
            return 'Lizard eats Paper',"Lose"       
        end
        
        
    end
end


#Sub Class
class Scissors < Element
    
    #Overriding Method
    def compare_to(name)
        if name.name == 'Paper'
            return 'Scissors cuts Paper',"Wins"
        elsif name.name == 'Lizard'
            return 'Scissors decapitates Lizard',"Wins"
        elsif name.name == 'Scissors'
            return 'Scissors equals Scissors',"Tie"
        elsif name.name == 'Rock'
            return 'Rock crushes Scissors',"Lose"
        elsif name.name == 'Spock'
            return 'Spock smashes Scissors',"Lose"
        end
        
    end
end


#Sub Class
class Lizard < Element
 
    attr_accessor :name
    #Overriding Method
    def compare_to(name)
        if name.name == 'Spock'
            return 'Lizards poisons Spock',"Wins"
        elsif name.name == 'Paper'
            return 'Lizard eats Paper',"Wins"
        elsif name.name == 'Lizard'
            return 'Lizard equals Lizard',"Tie"
        elsif name.name == 'Scissors'
            return 'Scissors decapitates Lizard',"Lose"
        elsif name.name == 'Rock'
            return 'Rock crushes Lizard',"Lose"
        end
        
    end
end


#Sub Class
class Spock < Element
    
    attr_accessor :name
    #Overriding Method
    def compare_to(name)
        if name.name == 'Scissors'
            return 'Spock smashes Scissors',"Wins"
        elsif name.name == 'Rock'
            return 'Spock vaporizes Rock',"Wins"
        elsif name.name == 'Spock'
            return 'Spock equals Spock',"Tie"
        elsif name.name == 'Paper'
            return 'Paper disapproves Spock',"Lose"
        elsif name.name == 'Lizard'
            return 'Lizard poisons Spock',"Lose"
        end
        
    end


end



#Global concrete class
$moves = [Rock.new('Rock'),Paper.new("Paper"),Scissors.new('Scissors'),Lizard.new('Lizard'),Spock.new('Spock')]




#Test
# rock  = Rock.new('Rock')
# paper = Paper.new('Paper')
# puts rock.compare_to(paper)
# puts paper.compare_to(rock)
# puts rock.compare_to(rock)