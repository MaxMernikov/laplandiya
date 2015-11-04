class OpinionsController < ApplicationController
  def index
    set_meta('opinions')
    @opinions = Opinion.ordered
  end

end