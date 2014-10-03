class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :dress_code, :null => false
      t.integer :top
      t.integer :bottom
      t.integer :one_piece
      t.integer :shoes, :null => false
      t.integer :accessory, :null => false
      t.references :user, index: true

      t.timestamps
    end
  end
end
