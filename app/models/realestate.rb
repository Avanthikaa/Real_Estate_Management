class Realestate < ActiveRecord::Base
  validates :name, :presence => true
  validates :website, :format => URI::regexp(%w(http:// https://))
  #validates_format_of :website, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
  validates :address, :presence => true
  validates :size, :presence => true
  validates :founded, :presence => true
end
