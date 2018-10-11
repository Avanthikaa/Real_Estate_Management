class Inquiry < ActiveRecord::Base
  validates :househunterid, :presence =>true, numericality: { only_integer: true }
  validates :subject, :presence =>true
  validates :message, :presence =>true
end
