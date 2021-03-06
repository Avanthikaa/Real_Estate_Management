class HouseController < ApplicationController
  def new
    @house = House.new
    #@datum = @house.data.build
  end

  def create
    @house = House.new(house_params)
    @house.creatorid = current_user.id
    if @house.save
      # If user saves in the db successfully:
      flash[:notice] = "House created successfully!"
      redirect_to user_menu_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = @house.errors.full_messages #"House cannot be created."

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
      redirect_to house_show_path
    else
      render 'edit'
    end
  end

 def interest
    @house = House.find(params[:id])
    @users = User.find(current_user.id)
    if @house.potentialbuyers == nil
      @house.potentialbuyers = @current_user.name
    else
      @house.potentialbuyers += " "+@current_user.name
    end
    if @users.house_interested == nil
      @users.house_interested = @house.id
    else
      @users.house_interested += " "+@house.id
      @user.update_attributes(:house_interested, @users.house_interested)
    end
    if @house.update_attributes(house_params)
      # Handle a successful update.
      flash[:notice] = "Updated successfully!"
      redirect_to house_show_path
    else
   flash[:notice] = "Couldn't update!"
      redirect_to house_show_path
    end
  end


  def show
    @house = House.all
  end

  def destroy
    @house = House.find_by_id(params[:id])
    if @house != nil
      House.find(params[:id]).destroy
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
    params.require(:house).permit(:realestateid, :location, :squarefootage, :year, :style, :list_price, :floors, :basement, :currentowner, :contact, :potentialbuyers, :image, :creatorid)
  end
end
