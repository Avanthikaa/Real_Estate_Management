class AddCreatoridToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :creatorid, :integer
  end
end
