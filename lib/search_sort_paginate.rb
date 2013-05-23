require 'search_sort_paginate/controller'
require 'search_sort_paginate/application_helper'
require 'search_sort_paginate/engine'

ActiveSupport.on_load(:action_controller) do
  include SearchSortPaginate::Controller
end
ActiveSupport.on_load(:action_view) do
  include SearchSortPaginate::ApplicationHelper
end

