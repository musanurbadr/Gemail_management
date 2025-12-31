class Users::ConfirmationsController < Devise::ConfirmationsController
  def show
    super do |resource|
      sign_in(resource)
      flash[:notice] = "Ваш аккаунт успешно верифицирован.🎉"
      return redirect_to root_path
    end
  end
end
