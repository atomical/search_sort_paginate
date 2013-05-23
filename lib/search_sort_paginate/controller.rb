module SearchSortPaginate
  module Controller
    def search_sort_paginate( params, relation, artificial_attributes = {}, opts = {} )
      relation = search( params, relation, opts )
      relation = sort( params, relation, artificial_attributes, opts )
      relation = paginate( relation, params, opts )
    end

    def search( params, relation, opts = {} )
      search = params[:search]
      if search.present?
        searchable_fields = relation.klass.searchable_fields || []
        if searchable_fields.present?
          search_sql = searchable_fields.map{|s_f| ActiveRecord::Base.send(:sanitize_sql_array,["#{s_f} LIKE ?", "%#{search}%"]) }.join(' || ')
          relation = relation.where(search_sql)
        end
      end
      relation
    end

    def paginate( relation, params, opts = {})
      page_number = params[:page] || 1
      page_size = params[:page_size] || 8
      relation.page( page_number ).per( page_size )
    end
    
    def sort( params, relation, artificial_attributes, opts = {} )
      
      column = params[:sort]
      if column && artificial_attributes[column.to_sym].present?
        column = artificial_attributes[column.to_sym]
      end

      direction = params[:direction]
      if column && direction
        relation.order(column + ' ' + direction)
      else
        relation
      end
    end
  end
end