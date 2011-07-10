Gem::Specification.new do |s|
  s.name         = 'globalize3_accessors'
  s.version      = '0.1.0'
  s.authors      = ['Tomasz Stachewicz']
  s.email        = 'tomekrs@o2.pl'
  s.homepage     = 'http://github.com/tomash/globalize3_accessors'
  s.summary      = 'Easy accessors for ActiveRecord attributes translated using Globalize3'
  s.description  = "#{s.summary}."

  s.files        = Dir['{lib/**/*,[A-Z]*}']
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'

  s.add_dependency 'activerecord', '>= 3.0.0'
  s.add_dependency 'activemodel', '>= 3.0.0'
  s.add_dependency 'globalize3', '>= 0.1.0'
  #s.add_dependency 'paper_trail',  '~> 2'

  s.add_development_dependency 'rake', '0.8.7'
  s.add_development_dependency 'database_cleaner', '0.5.2'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'pathname_local'
  s.add_development_dependency 'test_declarative'

  case ENV["RUBY_VERSION"]
  when /1\.8\.\d.+$/
    s.add_development_dependency 'ruby-debug'
  when /1\.9\.\d.+$/
    s.add_development_dependency 'ruby-debug19'
  end

  s.add_development_dependency 'sqlite3-ruby'
end
