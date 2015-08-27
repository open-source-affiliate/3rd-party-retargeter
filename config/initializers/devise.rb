Devise.setup do |config|

  config.mailer_sender = ENV.fetch('DEVISE_FROM_EMAIL')

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  # config.allow_unconfirmed_access_for = 2.days
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.email_regexp = /\A\s*([^@\s]{1,64})@((?:[-\p{L}\d]+\.)+\p{L}{2,})\s*\z/i # Via https://github.com/balexand/email_validator/blob/master/lib/email_validator.rb
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
