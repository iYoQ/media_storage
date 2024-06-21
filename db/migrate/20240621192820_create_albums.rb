class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :title, null: false, default: ""
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
