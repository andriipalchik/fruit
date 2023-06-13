class CreateFruits < ActiveRecord::Migration[7.0]
  def change
    create_table :fruits do |t|
      t.string :title
      t.string :headline
      t.string :image
      t.string :gradient_dark
      t.string :gradient_light
      t.text :description
      t.string :energy
      t.string :sugar
      t.string :fat
      t.string :protein
      t.string :vitamins
      t.string :minerals

      t.timestamps
    end
  end
end
