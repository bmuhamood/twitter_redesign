# rubocop: disable Lint/RedundantCopDisableDirective
# rubocop: disable Layout/LineLength
class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:photo, :cover_image, :name, :username, :email, :password, :password_confirmation)
  end

  def acount_update_params
    params.require(:user).permit(:photo, :cover_image, :name, :username, :email, :password, :password_confirmation, :current_password)
  end
end
# rubocop: enable Lint/RedundantCopDisableDirective
# rubocop: enable Layout/LineLength
