class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:name], password: params[:password])
    if user && user.token!
      render json: { auth_token: user.token }, status: 200
    else
      render json: {}, status: 401
    end
  end

end
