class CreateListings < ActiveRecord::Migration[5.2]
    def change
      create_table :listings do |t|
        t.string :name, null: false, index: true, unique: true
        t.string :category, null: false
        t.string :brand, null: false
        t.integer :price, null: false
        t.string :color, null: false
        t.text :description, null: false
  
        t.timestamps null: false
      end
    end
end