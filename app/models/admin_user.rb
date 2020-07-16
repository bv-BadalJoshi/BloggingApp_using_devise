class AdminUser < ApplicationRecord

	devise :database_authenticatable, 
		:recoverable, :rememberable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]
	
	def self.from_omniauth(auth)
		admin = 
			where(provider: auth.provider, uid: auth.uid).first_or_create do |admin|
				admin.email = auth.info.email
				admin.password = Devise.friendly_token[0,20]
			end
		admin
	end
end
