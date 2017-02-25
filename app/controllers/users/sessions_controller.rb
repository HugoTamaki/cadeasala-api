class Users::SessionsController < Devise::SessionsController
  skip_before_action :validate_token, only: :create
  skip_after_action :update_token, only: :create
  # respond_to :json

  before_action :authenticate, only: [:destroy]

  # POST /resource/sign_in
  def create
    resource = User.find_by(email: params[:user][:email])
    if resource && resource.valid_password?(params[:user][:password])
      @authenticated_user = Api::V1::Admin::AdminJWTSerializer.new(resource).serializable_hash
      response.headers['XSRF-TOKEN'] = Login.generate_token(@authenticated_user)
      render json: resource, serializer: Api::V1::UserSerializer
    else
      render json: {error: 'email or password is wrong'}, status: 404
    end
  end
end
