
def ceasar (message, decalage)
	result=""
	#Variable avec aplhabet
	alpha ="abcdefghijklmnopqrstuvwxyz"
	#tableau avec alphabet
	alpha = alpha.split('')
	#tableau du message
	message = message.split('')
	message.each{|car|
		result += decale_letter(car,decalage)
	}
	return result
end


def decale_letter (letter, decalage)
	alpha ="abcdefghijklmnopqrstuvwxyz"
	alpha = alpha.split('')
	alpha.each_with_index {|l, i|
		if letter == l
			if i+decalage <26
				return alpha[i+decalage]
			else
				return alpha[i+decalage-26]
			end
		elsif letter == l.upcase
			if i+decalage <26
				return alpha[i+decalage].upcase
			else
				return alpha[i+decalage-26].upcase
			end
		end
	} 
end


puts  ceasar("Abcz",1)