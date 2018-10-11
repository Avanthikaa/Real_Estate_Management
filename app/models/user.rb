class User < ActiveRecord::Base
  has_secure_password

  User.create({:name => "Admin", :email => "admin@admin.com", :password => "admin", :password_confirmation =>"admin", :user_type => "Admin"})
  # Verify that email field is not blank and that it doesn't already exist in the db (prevents duplicates):
  validates :email, presence: true, uniqueness: true

  belongs_to :realestate
end