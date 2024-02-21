class CreateBurgers < ActiveRecord::Migration[7.1]
  def change
    create_table :burgers do |t|
      t.text :image
      t.text :name
      t.float :price
      t.text :description
      t.boolean :veggie

      t.timestamps
    end
  end
end
