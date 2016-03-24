require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "alphabetical" do
    before do
      @product1 = Product.create! name: 'C'
      @product2 = Product.create! name: 'A'
      @product3 = Product.create! name: 'B'
    end    
    
    it "should sort products by name alphabetically" do
      @products = Product.alphabetical
      expect(@products).to eq [@product2, @product3, @product1]
     end
  end
end
