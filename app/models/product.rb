class Product < ActiveRecord::Base
 def self.alphabetical
    @product = Product.all.order name: :asc
  end
end
