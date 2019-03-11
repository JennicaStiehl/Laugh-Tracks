class CreateComedian < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :image
      t.timestamps
    end
  end
end
