class PagesController < ApplicationController
  def index
    @weights = Weight.ordered
  end

  def langing
  end

  def delivery
  end

  def contacts
  end
end