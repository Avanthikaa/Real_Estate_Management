class HouseController < ApplicationController
  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)

    if @house.save
      # If user saves in the db successfully:
      flash[:notice] = "Account created successfully!"
      redirect_to root_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      render :new
    end
  end
  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    if @house.update_attributes(house_params)
      # Handle a successful update.
      flash[:notice] = "Updated successfully!"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private
  def house_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:house).permit(:realestateid, :location, :squarefootage, :year, :style, :list_price, :floors, :basement, :currentowner, :contact, :potentialbuyers, :image)
  end
end
