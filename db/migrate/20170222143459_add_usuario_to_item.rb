class AddUsuarioToItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :usuario, foreign_key: true
  end
end
