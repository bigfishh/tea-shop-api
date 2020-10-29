class CreateCartTeas < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_teas do |t|
      t.integer :quantity
      t.integer :item_total
      t.belongs_to :cart, null: false, foreign_key: true
      t.belongs_to :tea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
