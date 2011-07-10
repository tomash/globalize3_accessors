require 'active_record'
require 'globalize3'
require 'active_record/globalize_accessors'

ActiveRecord::Base.send :include, ActiveRecord::GlobalizeAccessors
