class CreateMotorbikes < ActiveRecord::Migration[7.0]
  def change
    create_table :motorbikes do |t|
      t.string :name
      t.string :image
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
