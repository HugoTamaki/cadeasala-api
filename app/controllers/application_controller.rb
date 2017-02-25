class ApplicationController < ActionController::API
  before_action :transform_params, :validate_token
  after_action  :update_token

  def transform_params
    params.transform_keys!(&:underscore)
  end

  def validate_token
    token_result = Login.validate_token(request.headers['XSRF-TOKEN'])

    if token_result.nil?
      response.headers['XSRF-TOKEN'] = ''
      render json: {result: 'Not Authorized'}.to_json, status: :unauthorized
    else
      @authenticated_user = token_result[0]
    end
  end

  def update_token
    response.headers['XSRF-TOKEN'] = Login.generate_token(@authenticated_user)
  end
end
