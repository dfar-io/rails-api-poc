class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token 
  skip_before_action :authorize_request, only: :create

  # POST /signup
  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    render :json => response, :status => :created
  end

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
  end
end
