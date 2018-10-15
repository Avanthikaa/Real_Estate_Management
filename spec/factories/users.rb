RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

FactoryGirl.define do
  factory :user do |user|
    user.name "test1"
    user.email "123@gmail.com"
    user.phone "1234567890"
  end
end