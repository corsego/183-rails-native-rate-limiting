class Users::RegistrationsController < Devise::RegistrationsController
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_user_registration_path, alert: "Try again later." }
end
