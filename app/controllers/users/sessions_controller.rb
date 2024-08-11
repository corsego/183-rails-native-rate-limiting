class Users::SessionsController < Devise::SessionsController
  # rate_limit to: 2, within: 3.minutes, only: :create, by: -> { request.remote_ip }, with: -> { head :too_many_requests }
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_user_session_path, alert: "Try again later." }
end
