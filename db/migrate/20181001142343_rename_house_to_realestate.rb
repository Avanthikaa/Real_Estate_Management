class RenameHouseToRealestate < ActiveRecord::Migration
  def change
    rename_table :houses, :realestates
  end
end
