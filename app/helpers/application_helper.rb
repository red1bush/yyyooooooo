module ApplicationHelper
# Ajout de la fction photo de profil (RB)
	def avatar_url(user)
		user.avatar.url 
	end
end
