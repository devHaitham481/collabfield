class RegistrationsController < Devise::RegistrationsController


  # the methods that you see below are already in the devise::registrationsCOntroller-- we just inherited them here - 
  # so that we could alter them by adding the name attribute to the params permit list
  private 

  def sign_up_params 
    params.require(:user).permit(:name, 
                                 :email, 
                                 :password, 
                                 :password_confirmation)
    
  end

  def account_update_params
    params.require(:user).permit( :name, 
                                  :email, 
                                  :password, 
                                  :password_confirmation, 
                                  :current_password) 
  end


end
