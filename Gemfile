source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# ログイン
gem 'devise'
gem 'pry-rails'

# アイコン
gem 'font-awesome-sass'
gem 'pry-byebug', group: :development

# bootstrapフォーム作成
gem "bootstrap_form", "~> 4.0"

# 多言語対応
gem 'rails-i18n', '~> 6.0'
gem 'devise-i18n'

# 画像
gem 'carrierwave', '~> 2.0'

# S3
gem 'fog-aws'

# ページネーション
gem 'kaminari'

# 検索
gem 'ransack'

# 管理者
gem 'activeadmin'

# turbolinks(画面遷移高速化)
gem 'turbolinks', '~> 5'

# youtubeAPI
gem 'google-api-client', '~> 0.11'

# 環境変数を管理
# gem 'dotenv-rails'

# TwitterAPI
gem 'omniauth', '1.9.1'

# TwitterAPI
gem 'omniauth-twitter'

# スクレイピング
gem 'mechanize'

# 列挙
gem 'active_hash'

# 静的ページを作る
gem 'high_voltage'



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  
  # デバッグ用
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-doc'

  # Rails用のテストフレームワーク
  gem 'rspec-rails'
  
  # モデルに関するテストデータ作成用
  gem 'factory_bot_rails'
  
  # ダミーデータの生成
  gem 'faker'

  gem 'rails-controller-testing'

  gem 'rubocop-rails'

end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Capistranoの設定
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.6", require: false
  gem 'capistrano-rbenv', '~> 2.2'
  gem 'capistrano-rbenv-vars', '~> 0.1'
  gem 'capistrano3-puma', '~> 4.0'

end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
