class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company_name, :string
    add_column :users, :house_interested, :string

  end
end
