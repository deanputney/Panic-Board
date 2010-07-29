# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_panic_board_session',
  :secret      => 'c28de8ea7ccaeabf1eacb0f1a6ccc7076e20d253f6972d39a4323b801c2c4822893c8ef64a78f996a8df24440783b4ff9d9de6ef27762f6ae71426ba2e9a3c1a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
