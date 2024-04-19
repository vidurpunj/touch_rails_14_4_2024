# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.touchrails.com/"
SitemapGenerator::Sitemap.compress = false
SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  add "about",
    changefreq: 'yearly',
    lastmod: '2024-04-19 21:39:40',
    priority: 0.4
  add "contacts",
      changefreq: 'yearly',
      lastmod: '2024-04-19 21:39:40',
      priority: 0.4
  add "blogs",
      changefreq: 'monthly',
      lastmod: '2024-04-19 21:39:40',
      priority: 0.4
  add "portfolio",
      changefreq: 'monthly',
      lastmod: '2024-04-19 21:39:40',
      priority: 0.4
end
