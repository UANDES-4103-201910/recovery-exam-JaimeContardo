class CatalogController < ApplicationController
  def index
  	@pizzas = Pizza.all
  end
end
