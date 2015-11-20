class OpinionsController < ApplicationController
  def index
    set_meta('opinions')
    @opinions = Opinion.ordered.limit(1)
    @more_opinions = Opinion.ordered.offset(1).limit(6)
  end

end