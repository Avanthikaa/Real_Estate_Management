class InquiryController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)

    if @inquiry.save
      # If user saves in the db successfully:
      flash[:notice] = "Inquiry created successfully!"
      redirect_to user_menu_path

    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create Inquiry. Please make sure you are entering all the information and try again."
      render :new
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
    params.require(:inquiry).permit(:househunterid, :subject, :message, :reply)
  end
end
