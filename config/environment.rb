require 'bundler'
Bundler.require
require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
ActiveRecord::Base.logger = Logger.new(STDOUT)
require_all 'lib'
require_all 'app'
