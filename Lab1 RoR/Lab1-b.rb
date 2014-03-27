class Dessert
$size = 0
attr_accessor :name, :calories, :size
    
    def initialize(name, calories)
	 @name = name
         @calories = calories
         $size += 1
    end
    
    def healthy?
	if calories < 200
		true
	else
		false
	end
    end
    
    def delicious?
	true
    end
    
    def count
	$size
    end
    
    def to_s
	 "postre: #{@name}. Calorias: #{@calories}"
    end

end

class JellyBean < Dessert

attr_reader :flavor
    
    def initialize(name, calories, flavor)
	@name = name
        @calories = calories
        @flavor = flavor
    end
	
    def delicious?
	if flavor !=  "black licorice"
		true
	else
		false
	end
        
    end
        
    def to_s
	"postre: #{@name}. Calorias: #{@calories}. Sabor: #{@flavor}"
    end

end



