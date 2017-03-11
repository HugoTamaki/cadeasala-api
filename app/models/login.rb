class Login
  class << self
    def validate_token(token)
      begin
        JWT.decode token, ENV['SECRET_BASE_KEY'], true, { algorithm: 'HS256' }
      rescue JWT::ImmatureSignature, JWT::ExpiredSignature, JWT::DecodeError
        nil
      end
    end

    def generate_token(data)
      JWT.encode data, ENV['SECRET_BASE_KEY'], 'HS256'
    end
  end
end