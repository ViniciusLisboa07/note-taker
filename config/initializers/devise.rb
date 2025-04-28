# frozen_string_literal: true

Devise.setup do |config|
    # The secret key used by Devise. Devise uses this key to generate
    # random tokens. Changing this key will render invalid all existing
    # confirmation, reset password and unlock tokens in the database.
    config.secret_key = Rails.application.credentials.secret_key_base
  
    # ==> Controller configuration
    # Configure the parent class to the devise controllers.
    config.parent_controller = 'ActionController::API'
  
    # ==> Mailer Configuration
    config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  
    # ==> ORM configuration
    require 'devise/orm/active_record'
  
    # ==> Configuration for any authentication mechanism
    config.case_insensitive_keys = [:email]
    config.strip_whitespace_keys = [:email]
    config.skip_session_storage = [:http_auth]
  
    # ==> Configuration for :database_authenticatable
    config.stretches = Rails.env.test? ? 1 : 12
  
    # ==> Configuration for :validatable
    config.password_length = 6..128
  
    # ==> Configuration for :timeoutable
    config.timeout_in = 30.minutes
  
    # ==> Configuration for :lockable
    config.maximum_attempts = 5
    config.lock_strategy = :failed_attempts
    config.unlock_keys = [:email]
    config.unlock_strategy = :email
    config.last_attempt_warning = true
  
    # ==> Configuration for :recoverable
    config.reset_password_within = 6.hours
    config.sign_in_after_reset_password = true
  
    # ==> Configuration for :rememberable
    config.remember_for = 2.weeks
    config.expire_all_remember_me_on_sign_out = true
  
    # ==> Configuration for :validatable
    config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  
    # ==> Configuration for :omniauthable
    # Uncomment the line below and add the 'omniauth-github' gem to your Gemfile if you need GitHub authentication
    # config.omniauth :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET'], scope: 'user,public_repo'
end