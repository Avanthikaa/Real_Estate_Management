class Inquiry < ActiveRecord::Base
  validates :househunterid, :presence =>true
  validates :subject, :presence =>true
  validates :message, :presence =>true
end
