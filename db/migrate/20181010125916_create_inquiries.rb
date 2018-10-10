class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :househunterid
      t.string :subject
      t.string :message
      t.string :reply

      t.timestamps null: false
    end
  end
end
