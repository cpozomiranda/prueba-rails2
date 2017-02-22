class Item < ApplicationRecord
	belongs_to :categorium, optional: true 
	scope :size, ->(x){limit(x)}
	scope :user, -> {where(usuario: false)}
end
