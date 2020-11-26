
def ceasar (message, decalage)
	result=""
	#tableau du message
	message = message.split('')
	message.each{|car|
		result += decale_letter(car,decalage)
	}
	return result
end


def decale_letter (letter, decallage)
	letter_dec = letter.ord
	puts "Valeur decimal #{letter_dec}"

	minMin = "a".ord
	maxMin = "z".ord
	minMaj = "A".ord
	maxMaj ="Z".ord
	#gestion minuscule
	if letter_dec >= minMin and letter_dec <= maxMin
		#Gestion decalage minuscule
		puts "Lettre #{letter} decimal #{letter_dec} limite#{maxMin}"
		if letter_dec + decallage < maxMin
			d_letter = letter_dec + decallage
			puts "Decallage classique Nouvelle Valeur decimal #{letter_dec}"
			return d_letter.chr
		else
			d_letter = letter_dec + decallage - 26
			puts "Decallage supérieur Nouvelle Valeur decimal #{d_letter}"
			return d_letter.chr
		end
	end

	#Gestion majuscule
	if letter_dec >= minMaj and letter_dec <= maxMaj
		#Gestion decalage majuscule
		if letter_dec + decallage < maxMaj
			d_letter = letter_dec + decallage
			return d_letter.chr
		else
			d_letter = letter_dec + decallage - 26
			return d_letter.chr
		end
	end

	return letter
end


puts ceasar("az",2)
puts ceasar("AZ", 2)
puts ceasar("What a string!",31)
