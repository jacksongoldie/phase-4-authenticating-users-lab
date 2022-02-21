class UserController < ApplicationController
  def show
    user = User.first
    if user
      render json: user, status: :ok
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end
end
