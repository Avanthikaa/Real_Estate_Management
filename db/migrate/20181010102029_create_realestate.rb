class CreateRealestate < ActiveRecord::Migration
  def change
    create_table :realestates do |t|
        t.string :name
        t.string :website
        t.string :address
        t.integer :size
        t.integer :founded
        t.float :revenue
        t.string :synopsis
    end
  end
end