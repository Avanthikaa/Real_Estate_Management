class Realestate < ActiveRecord::Base
  validates :name, :presence => true
  validates :website, url: true
  validates :address, :presence => true
  validates :size, :presence => true, :numericality => { only_integer: true }
  validates :founded, :presence => true, :numericality => { only_integer: true }, :length => {is: 4}

  has_many :users
end
