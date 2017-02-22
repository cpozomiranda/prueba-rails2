class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.serial :nserie
      t.integer :tamaño
      t.text :descripcion

      t.timestamps
    end
  end
end
