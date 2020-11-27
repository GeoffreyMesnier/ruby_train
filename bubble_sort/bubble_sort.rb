def bubble_sort(listNombre)
	nbExecution = listNombre.length - 1
	compteur = 0
	puts "Nombre execution prevu #{nbExecution}"
	#Boucle pour les executions
	nbExecution.times do
		compteur += 1
		tri=false
		#Compare number 
		listNombre.each.with_index do |num,i|
			if i < listNombre.length - 1
				if num > listNombre[i+1]
					temp = listNombre[i]
					listNombre[i] = listNombre[i+1]
					listNombre[i+1] = temp
					tri = true
				end
			end
		end

		#check if list order
		break if tri == false 
	end
	puts "Tri effectué en #{compteur} tour"
	return listNombre
end


puts(bubble_sort([4,3,78,2,0,2]))

print(bubble_sort([76,56,7,89,32,0,7,98,8,3,5,7,57]))