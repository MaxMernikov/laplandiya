class PagesController < ApplicationController
  def index
    set_meta('index')
    @weights = Weight.ordered
  end

  def langing
  end

  def delivery
    set_meta('delivery')
  end

  def contacts
    set_meta('contacts')
  end
end