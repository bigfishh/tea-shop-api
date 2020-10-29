class CreateTeas < ActiveRecord::Migration[6.0]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :image1
      t.string :image2
      t.string :description
      t.integer :price
      t.belongs_to :tea_variety, null: false, foreign_key: true

      t.timestamps
    end
  end
end
