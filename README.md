search_sort_paginate
====================

Copyright Adam Hallett 2013


In your application stylesheet:

```scss
@import "sorting";
```

In your controller:

```ruby
  def index
    @units = search_sort_paginate(params, Unit.scoped)
  end
```

In your model add the fields that can be searched:

```ruby
  def self.searchable_fields
    [ 
      :name 
    ] 
  end
```