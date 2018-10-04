class CreateCarts < ActiveRecord::Migration[5.2]
    def change
      create_table :carts do |t|
        t.references :listing, index: true, foreign_key: true
        t.integer :quantity, default: 1
        t.references :user, index: true, foreign_key: true
  
        t.timestamps null: false
      end
    end
end