 module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
	include Action
  
  	attr_reader :name
  
  	def initialize(name)
   		@name = name
  	end
	
	def run
		time = 0
		dist = @distance
   		while dist <= 33
			dist += @distance
			time += 1
		end
		sleep time
	 	puts "distance: #{dist} feets time: #{time} seconds"
  	end
end

class Cricket 
	include Action
  
  	attr_reader :name
  
  	def initialize(name)
    		@name = name
  	end

	def run
		time = 0
		dist = @distance
   		while dist <= 33
			dist += @distance
			time += 1
			
		end
		sleep time
	 	puts "distance: #{dist} feets time: #{time} seconds"
  	end

	def chirp
		sing = rand(90) + 10
		sing.times do
			puts "Chirp... chirp!!" 
		end
	end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump
jiminy.chirp
peter.run
jiminy.run
