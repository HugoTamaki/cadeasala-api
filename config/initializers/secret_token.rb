CadeasalaApi::Application.config.secret_token = ENV['SECRET_BASE_KEY'] || SecureRandom.hex(64)