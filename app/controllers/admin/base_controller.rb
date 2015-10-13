class Admin::BaseController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_admin!
  layout :choose_layout
  
  inherit_resources

  def choose_layout
    request.xhr? ? false : 'admin'
  end

  def create
    create!{ collection_url }
  end

  def update
    update!{ collection_url }
  end
end
