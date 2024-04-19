rails new touch_rails_14_4_2024 --skip-sprockets --skip-turbolinks --skip-javascript --skip-webpack-install -d postgresql

SiteMap:
gem 'sitemap_generator'
Steps:
1. rails sitemap:install
2. rails sitemap:refresh
3. rails sitemap:refresh:no_ping