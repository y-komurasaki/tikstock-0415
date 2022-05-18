class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.references :user,             null: false, foreign_key: true
      t.string     :item_name,        null: false
      t.text       :info,             null: false
      t.integer    :stock_quantity,   null: false

      t.timestamps
    end
  end
end
