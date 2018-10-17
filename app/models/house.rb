class House < ActiveRecord::Base
  mount_uploader :image, HouseImagesUploader
  validates :realestateid, :presence => { :message => "Realestate ID has to be a valid number"}, numericality: { only_integer: true }
  validates :location, :presence =>{ :message => "Location is necessary"}
  validates :squarefootage, :presence => {:message => "Square footage shpuld be present and needs to be an integer"}, numericality: true
  validates :year, presence: true, numericality: { only_integer: true }, length: {is: 4, :message => "Year needs to be 4 digits long"}
  validates :list_price, :presence => {:message => "List price cannot be empty"}
  validates :floors, presence: true, numericality: { only_integer: true, :message => "Floors cannot be empty and needs to be an integer"}
  validates :contact, presence: true, numericality: { only_integer: true }, length: {is: 10, :message => "Please enter a valid number"}
end