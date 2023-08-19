source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.0'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'helix-rails', '~> 0.5.0'
gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.6'
gem 'sass-rails', '~> 5'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'webpacker', '~> 4.0'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :development, :test do
  gem 'axe-matchers'
  gem 'bullet'
  gem 'bundler-audit'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'gnar-style', require: false
  gem 'lol_dba'
  gem 'mutant-rspec'
  gem 'okcomputer'
  gem 'pronto'
  gem 'pronto-brakeman', require: false
  gem 'pronto-rubocop', require: false
  gem 'pronto-scss', require: false
  gem 'pry-rails'
  gem 'rspec-its'
  gem 'rspec-rails', '~> 3.7'
  gem 'scss_lint', require: false
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end
gem 'fizzbuzz', path: 'crates/fizzbuzz'
