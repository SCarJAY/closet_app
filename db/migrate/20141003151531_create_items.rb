class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :img_url, :null => false
      t.string :name, :null => false
      t.string :category, :null => false
      t.string :color, :null => false
      t.string :size, :null => false
      t.string :brand
      t.string :purchased_from
      t.references :user, index: true

      t.timestamps
    end
  end
end
