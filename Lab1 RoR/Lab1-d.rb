class Computer
	@@users = {}
    
    	def initialize username, password
		@username = username
		@password = password
		@files = {}
    	end
	
	def create(nombre)
		if @files.has_key?(nombre)
			p "ya existe #{nombre}"		
		else 
			@files[nombre]= Time.now
		end	
	end

	def ls h
		if h["sort"] == "asc"
			p @files.sort_by
		end
		if h["sort"] == "desc"
			p @files.sort_by{|k, v| k}.reverse
		end
	
	end	
	
	def rm(nombre)
		if @files.has_key?(nombre)
			@files.delete(nombre)
		else 
			p "no existe #{nombre}"
		end	
	end
end

peter = Computer.new("Peter", "123")
peter.create("hola")
peter.create("hola")
peter.create("hola2")
peter.create("hola3")
peter.create("hola4")
peter.create("hola5")
h1 = Hash.new
h1["sort"] = "desc"

peter.ls(h1)


