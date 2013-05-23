module SearchSortPaginate
  class Engine < ::Rails::Engine
    initializer 'search_sort_paginate.assets.precompile' do |app|
      # assets = %w(images/asc.gif images/desc.gif stylesheets/sorting.css.scss)
      # asset_path = File.expand_path('../../../vendor/assets',__FILE__)

      # app.config.assets.precompile += assets.map{|asset| File.join(asset_path, asset)}
      # app.config.action_view.javascript_expansions[:defaults] << assets.map{|asset| File.join(asset_path, asset)}
      # puts assets.map{|asset| File.join(asset_path, asset)}
    end
  end
end