class Login
  class << self
    def validate_token(token)
      begin
        JWT.decode token, Rails.application.secrets.secret_key_base, true, { algorithm: 'HS256' }
      rescue JWT::ImmatureSignature, JWT::ExpiredSignature, JWT::DecodeError
        nil
      end
    end

    def generate_token(data)
      JWT.encode data, Rails.application.secrets.secret_key_base, 'HS256'
    end
  end
end