source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


gem 'rails',      '6.0.0'
gem 'bcrypt',     '3.1.12'
gem 'faker',          '1.7.3'
gem 'carrierwave',             '1.2.2'
gem 'mini_magick',             '4.9.4'
gem 'will_paginate',           '3.1.7'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'bootstrap-sass', '3.4.1'
gem 'puma',       '3.12.1'
gem 'sass-rails', '5.1.0'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'webpacker',  '4.0.7'
gem 'turbolinks', '5.2.0'
gem 'jbuilder',   '2.9.1'
gem 'bootsnap',   '1.4.4', require: false

group :development, :test do
  gem 'rspec-rails', '~> 4.0.0.beta2'
  gem 'capybara',                 '3.28.0'
  gem 'sqlite3',    '1.4.1'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'hirb'
end

group :development do
  gem 'web-console',           '4.0.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.1.0'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'webdrivers',               '4.1.2'
  gem 'rails-controller-testing', '1.0.4'
  gem 'minitest',                 '5.11.3'
  gem 'minitest-reporters',       '1.3.8'
  gem 'guard',                    '2.15.0'
  gem 'guard-minitest',           '2.4.6'
end

group :production do
  gem 'pg', '1.1.4'
  gem 'fog', '1.42'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
