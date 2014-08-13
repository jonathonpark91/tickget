class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :photo
      t.string :location
      t.integer :ticket_id
      t.timestamps
    end
  end
end
