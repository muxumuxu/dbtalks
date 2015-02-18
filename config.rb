Slim::Engine.options[:pretty] = true
I18n.default_locale = :fr

activate :livereload, no_swf: true, apply_css_live: true

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

set :build_dir, 'tmp'
activate :directory_indexes

if ENV['ASSETS_HOST']
  activate :asset_host
  set :asset_host, ENV['ASSETS_HOST']
end

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash

  Slim::Engine.options[:pretty] = false

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
