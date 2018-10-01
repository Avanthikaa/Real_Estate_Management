class House < ActiveRecord::Base
  validates :id, :presence => true
  validates :realestateid, :presence =>true
  validates :location, :presence =>true
  validates :squarefootage, :presence =>true
  validates :year, :presence =>true
  validates :style, :presence =>true
  validates :list_price, :presence => true
  validates :floors, :presence => true
  validates :basement, :presence => true
  validates :currentowner, :presence => true
  validates :contact, :presence => true
  validates :potentialbuyers, :presence => true
end
