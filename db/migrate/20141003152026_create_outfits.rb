class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :name, :null => false
      t.references :user, index: true

      t.timestamps
    end
  end
end
