#Fonction pour gérer le stock
def stock_picker(valeurStock)
	result =[0,0]
	
	#Parcours les valeur d'achat
	valeurStock.each_with_index{|valeurAchat,jourAchat|
		#Parcours les valeurs de vente
		valeurStock.each_with_index{|valeurVente,jourVente|
			if jourVente > jourAchat
				if (valeurVente - valeurAchat) > (valeurStock[result[1]] - valeurStock[result[0]] )
					result = [jourAchat,jourVente]
				end
			end
		}
	}
	return result
	#Choisi le max du stock
end


puts(stock_picker([17,3,6,9,15,8,6,1,10]))