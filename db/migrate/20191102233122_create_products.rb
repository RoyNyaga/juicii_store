class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.boolean :availability, default: true
      t.decimal :price, precision: 10, scale: 2, default: 0
      t.string :photo_link

      t.timestamps
    end
    add_index :products, :title
  end
end
