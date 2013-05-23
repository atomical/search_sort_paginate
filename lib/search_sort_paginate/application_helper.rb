module SearchSortPaginate
  module ApplicationHelper
    # http://railscasts.com/episodes/228-sortable-table-columns
    def sort_link(column, opts = {})
      title = opts[:title] || column.to_s.titleize
      css_class = column == params[:sort].try(:to_sym) ? "current #{sort_direction}" : nil

      opts.merge!( class: css_class ) if css_class
      direction = sort_direction == 'asc' ? 'desc' : 'asc'

      link_to title, params.merge(:sort => column, :direction => direction, :page => nil), opts
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : 'desc'
    end

    def page_size
      params[:page].to_i || 8
    end
  end
end