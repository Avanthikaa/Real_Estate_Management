class CreateHouses < ActiveRecord::Migration

  def change
    create_table :houses do |t|
      t.integer :realestateid, :primary_key
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
  #self.primary_key = :id

end
