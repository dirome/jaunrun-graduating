class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:juan).permit(:first_name, :last_name, :email, :contact_number, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:juan).permit(:first_name, :last_name, :email, :contact_number, :password, :password_confirmation, :current_password)
  end

   def sign_up_params
    params.require(:runner).permit(:first_name, :last_name, :email, :contact_number, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:runner).permit(:first_name, :last_name, :email, :contact_number, :password, :password_confirmation, :current_password)
  end
  
  
end
