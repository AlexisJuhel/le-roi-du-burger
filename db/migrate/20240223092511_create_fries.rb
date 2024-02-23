class CreateFries < ActiveRecord::Migration[7.1]
  def change
    create_table :fries do |t|
      t.text :image
      t.string :name
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
