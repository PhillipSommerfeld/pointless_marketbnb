class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :item_name
      t.float :price
      t.string :image_url
      t.string :description
      t.integer :quantity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
