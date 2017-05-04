# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( gray.css )

Rails.application.config.assets.precompile += %w( blogconfigs.css )
Rails.application.config.assets.precompile += %w( blogconfigs.js )

Rails.application.config.assets.precompile += %w( bloggenres.css )
Rails.application.config.assets.precompile += %w( bloggenres.js )

Rails.application.config.assets.precompile += %w( blogposts.css )
Rails.application.config.assets.precompile += %w( blogposts.js )

Rails.application.config.assets.precompile += %w( blogs.css )
Rails.application.config.assets.precompile += %w( blogs.js )

Rails.application.config.assets.precompile += %w( questions.css )
Rails.application.config.assets.precompile += %w( questions.js )

Rails.application.config.assets.precompile += %w( ajax.css )
Rails.application.config.assets.precompile += %w( ajax.js )
