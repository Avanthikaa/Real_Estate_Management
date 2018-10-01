class RemoveStatusFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :users, :boolean
  end
end
