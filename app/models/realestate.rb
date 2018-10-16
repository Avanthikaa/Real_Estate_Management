class Realestate < ActiveRecord::Base
  validates :name, :presence => {:message => "Name cannot be empty"}
  validates :website, :presence => {:message => "Enter valid URL"}
  validates :address, :presence => {:message => "Address cannot be empty"}
  validates :size, :presence => true, :numericality => { only_integer: true, :message => "Size is an integer" }
  validates :founded, :presence => true, :numericality => { only_integer: true }, :length => {is: 4, :message => "Founded should be 4 digits long"}

  has_many :users
end
