class Realestate < ActiveRecord::Base
  validates :name, :presence => true
  validates :website, :presence => true
  validates :address, :presence => true
  validates :size, :presence => true
  validates :founded, :presence => true
  validates :revenue, :presence => true
  validates :synopsis, :presence => true
end
