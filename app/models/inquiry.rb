class Inquiry < ActiveRecord::Base
  validates :subject, :presence =>{:message => "Subject cannot be empty"}
  validates :message, :presence =>{:message => "Message cannot be empty"}
end
