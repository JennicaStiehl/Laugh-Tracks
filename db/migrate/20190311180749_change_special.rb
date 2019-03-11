class ChangeSpecial < ActiveRecord::Migration[5.2]
  def change
    rename_column :specials, :comedians_id, :comedian_id
    # rename_column :table_name, :old_column, :new_column
  end
end
