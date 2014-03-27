module Lab
	#################################EJERCICIO A####################################
	def palindromo?(s)
		subS = s.downcase
		subS1 = subS.gsub( /[^\w]/, "" )
		subS12 = subS1.gsub( /[^\D]/, "" )
		rev = subS12.reverse
		if rev == subS12
			pal = 1
		else
			pal = 0
		end
		pal
	end
	
	#################################EJERCICIO B####################################

	def cuenta_palabras(s)
		sp = s.split(" ")
		h1 = Hash.new  
		i = 0
		x = 0
		while i < sp.size do
			x = s.scan(sp[i]).size
			h1[sp[i]] = x	
			i += 1
		end
		h1
	end
	
	#################################EJERCICIO C####################################


	def hanoi(numero_discos, t_origen, t_destino, t_alterna)
		  if numero_discos > 1
			hanoi(numero_discos-1, t_origen, t_alterna, t_destino)
			hanoi(1, t_origen, t_destino, t_alterna)
			hanoi(numero_discos-1, t_alterna, t_destino, t_origen)
		  else
		    	puts "de #{t_origen} hacia #{t_destino}"
		  end
	end

	#################################EJERCICIO D####################################

	def sort(a,asc)	
		if asc == 0
		j = 0
			while j < ((a.size)-1)
			i = 0
				while i < ((a.size)-1)
					if a[i] > a[i+1]
						aux=a[i]
						a[i] = a[i+1]
						a[i+1]=aux;
					end
					i += 1
				end
				j += 1
			end
		end	
		if asc == 1
			j = 0
			while j < ((a.size)-1)
			i = 0
				while i < ((a.size)-1)
					if a[i] < a[i+1]
						aux=a[i]
						a[i] = a[i+1]
						a[i+1]=aux;
					end
					i += 1
				end
				j += 1
			end
		end
		a
	end

	#################################EJERCICIO E####################################

	def  char_count(s,c)
		i = 0
		cont = 0
		while i < s.size 
			if s[i,1] == c
				cont +=1
				i+=1
			else
				i+=1
			end
		end
		cont
	end
	
	#################################EJERCICIO F####################################

	def  atoi(s)
		i = 0
		n = 0
		s2 = s.reverse
		s2.each_char { |c|
			 	n = n + 10**i * Integer(c)
			 	i = i + 1 			
			}
		n
	end
	
	p atoi("123")
	
end


