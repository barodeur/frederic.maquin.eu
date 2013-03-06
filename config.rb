###
# Blog settings
###

require 'active_support/all'

# Time.zone = "UTC"

activate :blog do |blog|
  # blog.prefix = "blog"
  blog.permalink = ":lang/blog/:year/:month/:day/:title.html"
  blog.sources = "blog/:year-:month-:day-:title.html"
  blog.taglink = "/:lang/blog/tags/:tag.html"
  blog.layout = "blog_layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "blog/tag.html"
  # blog.calendar_template = "calendar.html"

  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/:num"
end

# page "/feed.xml", :layout => false

### 
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
# 
# With no layout
# page "/path/to/file.html", :layout => false
# 
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
# 
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
helpers do
  def localized_link_to(name, resource_name)
    link_to I18n.t(name), '/' + I18n.locale.to_s + '/' + I18n.t('paths.' + resource_name) + '.html'
  end
  
  def to_language(url, lang)
    url.gsub!('index.html', '')
    url.gsub!(/en\/|fr\//, '')
    
    require 'uri'
    
    uri = URI.parse(request.path)
    uri.fragment  = nil
    uri.query = nil
    
    '/' + lang + '/' + uri.to_s
  end
  
  def to_english(url)
    to_language(url, 'en')
  end
  
  def to_french(url)
    to_language(url, 'fr')
  end
  
  def previous_article_lang(current_article, lang)
    blog.articles.find do |a|
      begin
        (a.date < current_article.date) and (a.data.lang == lang)
      rescue NoMethodError
        false
      end
    end
  end
  
  def next_article_lang(current_article, lang)
    blog.articles.reverse.find do |a|
      begin
        (a.date > current_article.date) and (a.data.lang == lang)
      rescue NoMethodError
        false
      end
    end
  end
  
  def previous_article_en(current_article)
    previous_article_lang(current_article, 'en')
  end
  
  def next_article_en(current_article)
    next_article_lang(current_article, 'en')
  end
  
  def previous_article_fr(current_article)
    previous_article_lang(current_article, 'fr')
  end

  def next_article_fr(current_article)
    next_article_lang(current_article, 'fr')
  end
  
  def articles_ordered_by_month(articles)
    
    if (articles != nil and articles.last != nil)
      
      first_days_of_months_until_now = (articles.last.date.prev_month.to_datetime..Time.zone.now.to_datetime).select {|d| d.day == 1}
    
      articles_ordered = {}
    
      first_days_of_months_until_now.each do |first_day_of_month|
      
        articles_in_month = []
      
        articles.each do |article|
          month = (first_day_of_month..first_day_of_month.end_of_month)
          if month.cover?(article.date.to_datetime)
            articles_in_month.append(article)
          end
        end
      
        articles_ordered.merge!(first_day_of_month => articles_in_month)
      end
      return articles_ordered
    else
      articles
    end
  end
  
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :fonts_dir, css_dir + '/shared/webfonts/'

activate :i18n, :mount_at_root => false

activate :directory_indexes

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # Minify Javascript on build
  activate :minify_javascript
  
  activate :minify_html
  
  # Enable cache buster
  activate :cache_buster
  
  # Use relative URLs
  # activate :relative_assets
  
  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher
  
  # Or use a different image path
  # set :http_path, "/Content/images/"
end
