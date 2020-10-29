class CreateTeaVarieties < ActiveRecord::Migration[6.0]
  def change
    create_table :tea_varieties do |t|
      t.string :name
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
