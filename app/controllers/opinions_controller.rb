class OpinionsController < ApplicationController
  def index
    @opinions = Opinion.ordered
  end

end