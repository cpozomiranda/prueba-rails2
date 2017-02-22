class Categorium < ApplicationRecord
	belongs_to :usuario
	has_many :items
end
