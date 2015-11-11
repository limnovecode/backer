# sitemap.rb

# Run it: "$ ruby sitemap.rb"

require "rubygems"
require "sitemap_generator"

SitemapGenerator::Sitemap.default_host = "http://backer.lim9.com"
SitemapGenerator::Sitemap.create do
  add "/home", changefreq: "daily", priority: 0.9
end

SitemapGenerator::Sitemap.ping_search_engines
