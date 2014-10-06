class StaticPagesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def about
  end
end
