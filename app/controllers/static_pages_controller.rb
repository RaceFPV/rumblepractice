class StaticPagesController < ApplicationController
  def index
    @inventories = Item.all
  end

  def about
  end
end
