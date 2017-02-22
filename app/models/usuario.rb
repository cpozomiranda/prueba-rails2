class Usuario < ApplicationRecord
	has_many :items	
	validates :nombre, presence: true
	validates :email, uniqueness: true
	before_save :set_capitalize
	after_destroy :borrar_usuario


	def set_capitalize

		Usuario.all.each do |cap|
			cap.name = cap.name.capitalize
			cap.save
		end	
	end

	def borrar_usuario
		Item.all.each do |x|

			x.destroy
			
		end
	end




end
