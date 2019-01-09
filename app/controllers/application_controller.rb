class ApplicationController < ActionController::API

  def issue_token(payload)
    JWT.encode(payload, 'SECRET')
  end

  def decode_token
    if get_token
        JWT.decode(get_token, 'SECRET')[0]
    end
  end

  def get_token
    request.headers['Authorization']
  end

  def current_user
    if decode_token
      User.find(decode_token["user_id"])
    end
  end

  def logged_in
    !!current_user
  end


end
