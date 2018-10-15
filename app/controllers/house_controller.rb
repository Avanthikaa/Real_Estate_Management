class HouseController < ApplicationController
  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)

    if @house.save
      # If user saves in the db successfully:
      flash[:notice] = "House created successfully!"
      redirect_to user_menu_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      render :new
    end
  end
  def edit
    @house = House.find_by_id(params[:id])
    if @house == nil
      flash[:notice] = "Record not found!"
      render 'house/show'
    end
  end

  def update
    @house = House.find(params[:id])
    if @house.update_attributes(house_params)
      # Handle a successful update.
      flash[:notice] = "Updated successfully!"
      redirect_to @house
    else
      render 'edit'
    end
  end


  def destroy
    @house = House.find_by_id(params[:id])
    if @house != nil
      User.find(params[:id]).destroy
      flash[:notice] = "House deleted"
      redirect_to house_show_path
    else
      flash[:notice] = "Record not found"
    end

  end


  private
  def house_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:house).permit(:realestateid, :location, :squarefootage, :year, :style, :list_price, :floors, :basement, :currentowner, :contact, :potentialbuyers, :image)
  end
end
