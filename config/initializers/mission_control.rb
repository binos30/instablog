Rails.application.configure do
  user     = Rails.application.credentials.dig(:mission_control, :http_basic_auth_user) || "binos"
  password = Rails.application.credentials.dig(:mission_control, :http_basic_auth_password) || "secret"

  MissionControl::Jobs.http_basic_auth_user     = user
  MissionControl::Jobs.http_basic_auth_password = password
end
