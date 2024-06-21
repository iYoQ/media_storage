class AddDeletedAtToBands < ActiveRecord::Migration[7.1]
  def change
    add_column :bands, :deleted_at, :datetime
    add_index :bands, :deleted_at
  end
end
