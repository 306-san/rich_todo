class UserController < ApplicationController
  def index
     @user = User.where(id: 1)
  end
end
