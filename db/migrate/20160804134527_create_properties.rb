class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :price
      t.string :type

      t.timestamps null: false
    end
  end
end
