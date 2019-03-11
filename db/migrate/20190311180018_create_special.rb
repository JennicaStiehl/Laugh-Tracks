class CreateSpecial < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :name
      t.integer :length
      t.string :image
      t.references :comedians
      t.timestamps
    end
  end
end
