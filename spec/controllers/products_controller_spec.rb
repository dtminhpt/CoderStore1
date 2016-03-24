require "rails_helper"

RSpec.describe VisitorsController, :type => :controller do
  describe "GET #index" do
    it "loads products by alphabetical name into @products" do
      @product1 = Product.create! name: 'C'
      @product2 = Product.create! name: 'A'
      @product3 = Product.create! name: 'B'
      
      get :index, { sort: 'alphabetical' }

      @products = Product.alphabetical 
      expect(@products).to eq [@product2, @product3, @product1]
    end
  end
end