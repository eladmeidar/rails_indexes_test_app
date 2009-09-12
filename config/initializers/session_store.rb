# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails_indexes_test_app_session',
  :secret      => '04dd42f35726c31a0c71c7d4f37186f530c51033e5de10dda4e20e4d262f54f4afa3c9d9dda158fd9b739ce5bab5761feed2c19c051a501a1512e040a6a1f326'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
