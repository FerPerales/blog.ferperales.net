Bridgetown.configure do |config|
  url "https://blog.ferperales.net"

  template_engine "liquid"

  timezone "America/Mexico_City"

  markdown "kramdown"

  permalink "/:year/:month/:title/"

  pagination do
    enabled true
  end

  init :"bridgetown-seo-tag"
  init :"bridgetown-feed"
end
