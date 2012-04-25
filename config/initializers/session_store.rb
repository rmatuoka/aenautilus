# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_aenautilus_session',
  :secret      => 'b9145f1517d728c3f035cd6dfe0e19ddad273a52981336ce3c531f6a821900b19ab8e7e64b5eac7c7a90163dea74556738addc94124032d10452fa73202b1c1f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
