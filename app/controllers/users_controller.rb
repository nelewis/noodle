class UsersController < Admin::BaseController
  def edit
    @user = User.find(current_user.id)
  end
end