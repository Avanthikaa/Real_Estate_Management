require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before(:each) do
    @car = User.create(:name =>'asd' , :phone =>'1234567895', :email=>'acb@gmail.com', :password => 'abcd', :password_confirmation => 'abcd')
  end

  it 'creates user successfully' do
  post :create, params: { user: {:name => 'car1', :phone =>'1234567895', :email=>'acb@gmail.com',:password => 'abcd', :password_confirmation => 'abcd'}}
  user_create1 = assigns(:user)
  expect(response).to render_template('new')
  expect(user_create1.errors.any?).to be true
  end
end

RSpec.describe 'show' do
  it 'should render show' do
    user = create(:user)
    session[:user] = user.id
    get :show, params: { id: user.id }
    expect(response).to render_template('show')
  end
end

RSpec.describe 'edit profile' do
  user1 = nil
  before(:each) do
    user1 = create(:user)
    session[:user] = user1.id
  end

 it 'should render edit' do
    get :edit, params: { id: user1.id }
    expect(response).to render_template('edit')
  end
end
