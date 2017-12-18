class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable


# Pour que le nom sois demander dans le fomrulaire d'inscription
validates :fullname, presence: true, length: {maximum: 65}

has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/default_image.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

has_many :annonces


def self.from_omniauth(auth)
	user = User.where(email: auth.info.email).first
	if user
		return user
	else
		where(provider: auth.provider, uid: auth.uid).first_or_create do |u|
			u.fullname = auth.info.name
			u.provider = auth.provider
			u.uid = auth.uid
			u.email = auth.info.email
			u.image = auth.info.image
			u.password = Devise.friendly_token[0,20]
		end

end


end
end