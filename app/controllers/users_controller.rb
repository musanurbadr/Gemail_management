class UsersController < ApplicationController
  def index
  end
  def index
  @users = User.all
  end
end
