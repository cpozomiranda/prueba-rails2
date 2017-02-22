class Item < ApplicationRecord
	belongs_to :categorium, optional: true 
	scope :size, ->(x){limit(x)}
	scope :user, -> {where(usuario: false)}
	after_destroy :borrar_todo


	def borrar_todo
		Categorium.all.each do |x|

			unless x.items.any?
				x.destroy
			end
		end
	end




end


