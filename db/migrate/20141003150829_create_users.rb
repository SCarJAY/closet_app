class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :email, :null => false, :unique => true
      t.string :password_digest, :null => false
      t.string :city, :null => false
      t.string :state, :null => false
      t.string :role

      t.timestamps
    end
  end
end
