require 'rails_helper'

RSpec.describe User, type: :model do
  it "should check uniqueness" do
    should validate_uniqueness_of(:email)
  end
  it "should check length" do
    should validate_length_of(:phone).is_at_least(10)
  end
  it "should validate presence of name" do
    should validate_presence_of(:name)
  end
end
