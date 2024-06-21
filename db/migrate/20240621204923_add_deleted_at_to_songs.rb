class AddDeletedAtToSongs < ActiveRecord::Migration[7.1]
  def change
    add_column :songs, :deleted_at, :datetime
    add_index :songs, :deleted_at
  end
end
