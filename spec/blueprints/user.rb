require 'machinist/active_record'
User.blueprint do
  email { "user#{sn}@example.com" }
  password {"password"}
  password_confirmation {"password"}
end