require_relative 'application'

module Zammad
  class ApplicationSupport < Rails::Application

    config.assets.paths << Rails.root.join("public", "assets", "addons")
    config.assets.paths << Rails.root.join("public", "assets", "chat")
    config.assets.paths << Rails.root.join("public", "assets", "error")
    config.assets.paths << Rails.root.join("public", "assets", "fonts")
    config.assets.paths << Rails.root.join("public", "assets", "form")
    config.assets.paths << Rails.root.join("public", "assets", "icon-fonts")
    config.assets.paths << Rails.root.join("public", "assets", "images")
    config.assets.paths << Rails.root.join("public", "assets", "images", "icons")
    config.assets.paths << Rails.root.join("public", "assets", "sounds")

  end
end

