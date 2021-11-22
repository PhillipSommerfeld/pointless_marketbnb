class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :item_price

      t.timestamps
    end
  end
end
