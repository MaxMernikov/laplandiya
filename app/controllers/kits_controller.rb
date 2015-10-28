class KitsController < ApplicationController
  def show
    @kit = Kit.find(4)
    @packing = Packing.last
    @compositions = Composition.all
  end
end