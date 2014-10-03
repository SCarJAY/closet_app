class CreateCameos < ActiveRecord::Migration
  def change
    create_table :cameos do |t|
      t.references :item, index: true
      t.references :outfit, index: true

      t.timestamps
    end
  end
end
