class CreateBands < ActiveRecord::Migration[7.1]
  def change
    create_table :bands do |t|
      t.string :name, null: false, default: ""
      t.integer :creation_year, null: true, default: nil

      t.timestamps
    end
  end
end
