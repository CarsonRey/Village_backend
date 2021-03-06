class ApplicationController < ActionController::API

# @@secret = Rails.application.credentials.auth_secret

  def issue_token(payload)
    JWT.encode(payload,'secret_for_github')
  end

  def decode_token

    if get_token
        JWT.decode(get_token, 'secret_for_github')[0]
    end
  end

  def get_token
    # byebug
    request.headers['Authorization']
  end

  def current_user
    if decode_token
      # byebug
      User.find(decode_token["user_id"])
    end
  end

  def logged_in
    !!current_user
  end


end
