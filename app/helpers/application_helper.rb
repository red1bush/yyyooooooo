module ApplicationHelper
# Ajout de la fction photo de profil (RB)
	def avatar_url(user)
		if user.image
			user.image
			else
		user.avatar.url 
	end
end
end

