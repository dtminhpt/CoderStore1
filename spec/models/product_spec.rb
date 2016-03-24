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

  describe "discount" do 
    before do
      @product1 = Product.create! price_vnd: 99000
      @product2 = Product.create! price_vnd: 120000
      @product3 = Product.create! price_vnd: 202000
      @product4 = Product.create! price_vnd: 900000
    end

    it "should discount 21% when hat cost > 100000 VND" do
      expect(@product1.delivered_price_vnd).to eq (@product1.price_vnd * (1 - 0.21))
    end
  end
end
