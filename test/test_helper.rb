require 'rubygems'
require 'bundler/setup'
require 'test/unit'
require 'fileutils'
require 'logger'

Bundler.require(:default, :test)
require 'database_cleaner'
require 'test_declarative'

log = '/tmp/globalize3_test.log'
FileUtils.touch(log) unless File.exists?(log)
ActiveRecord::Base.logger = Logger.new(log)
ActiveRecord::LogSubscriber.attach_to(:active_record)
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ':memory:')

$:.unshift File.expand_path('../../lib', __FILE__)
require 'globalize'
# require 'globalize/versioning/vestal_versions'
require 'erb'

#require File.expand_path('../data/schema', __FILE__)
#require File.expand_path('../data/models', __FILE__)

DatabaseCleaner.strategy = :truncation

class Test::Unit::TestCase
  def setup
    I18n.locale = :en
    Globalize.locale = nil
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end
end