class AuthenticatorService < SimpleDelegator

  def initialize(context)
    super context
  end

  def execute
    user = User.find_by(name: params[:name], password: params[:password])
    user ? respond_with_token(user) : render_error
  end

  def respond_with_token(user)
    user.token!
    render json: { auth_token: user.token }, status: 200
  end

  def render_error
    render json: {}, status: 401
  end

end
