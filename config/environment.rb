require 'bundler'
Bundler.require

require_relative '../lib/app'

DB = {:conn => SQLite3::Database.new("db/companies.db")}
