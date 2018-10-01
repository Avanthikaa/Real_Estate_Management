class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses, :id => false do |t|
      t.integer :id
      t.integer :realestateid
      t.string :location
      t.integer :squarefootage
      t.integer :year
      t.string :style
      t.float :list_price
      t.integer :floors
      t.boolean :basement
      t.string :currentowner
      t.string :contact
      t.string :potentialbuyers

      t.timestamps null: false
    end
  end
end
