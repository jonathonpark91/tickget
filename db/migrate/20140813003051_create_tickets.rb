class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :concert_name
      t.datetime :date_time
      t.string :venue
      t.float :price
      t.integer :quantity
      t.string :trade_value

      t.timestamps
    end
  end
end
