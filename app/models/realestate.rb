class Realestate < ActiveRecord::Base
  validates :name, :presence => true
  validates :website, url: true
  validates :address, :presence => true
  validates :size, :presence => true
  validates :founded, :presence => true
end
