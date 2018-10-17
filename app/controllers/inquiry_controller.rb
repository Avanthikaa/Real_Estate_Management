class InquiryController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.househunterid = current_user.id

    if @inquiry.save
      # If user saves in the db successfully:
      flash[:notice] = "Inquiry created successfully!"
      redirect_to user_menu_path

    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Couldn't create inquiry"
      flash.now.alert = @inquiry.errors.full_messages
      render :new
    end
  end

  def show
    @inquiry = Inquiry.all
  end

  def edit
    @inquiry = Inquiry.find_by_id(params[:id])
    if @inquiry == nil
      flash[:notice] = "Record not found!"
      render 'inquiry/show'
    end
  end

  def update
    @inquiry = Inquiry.find(params[:id])
    if @inquiry.update_attributes(inquiry_params)
      # Handle a successful update.
      flash[:notice] = "Updated successfully!"
      redirect_to user_menu_path
    else
      render 'edit'
    end
  end

  def reply_update
    @inquiry = Inquiry.find(params[:id])
    if @inquiry.update_attributes(inquiry_params)
      flash[:notice] = "Replied"
      render 'inquiry/show'
    end
  end

  def reply
    @inquiry = Inquiry.find_by_id(params[:id])
    if @inquiry == nil
      flash[:notice] = "Inquiry not found"
    end

  end

  def destroy
    @inquiry = Inquiry.find_by_id(params[:id])
    if @inquiry != nil
      Inquiry.find(params[:id]).destroy
      flash[:success] = "User deleted"
      redirect_to menu_path
    else
      flash[:notice] = "Record not found"
    end

  end


  private
  def inquiry_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.permit(:househunterid, :subject, :message, :reply)
  end
end
