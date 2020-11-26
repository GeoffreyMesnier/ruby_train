 def substrings(word, dict)
 	dictResult = Hash.new
 	dict_string = word.downcase.split(" ")
 	#find string or substring 
 	dict_string.each do |word|
		dict.each do |dictKey|
			if (word.include? dictKey) 
				if dictResult.has_key?(dictKey)
					dictResult[dictKey] += 1
				else
					dictResult[dictKey] = 1
				end
			end
		end
	end
 	return dictResult
 end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts(substrings("Howdy partner, sit down! How's it going?",dictionary))

#test pour commit
