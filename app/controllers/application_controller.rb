class ApplicationController < ActionController::Base
  include CustomHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_meta(page)
    set_meta_tags title: custom("meta_title_#{page}"),
              description: custom("meta_description_#{page}"),
              keywords: custom("meta_keywords_#{page}")
  end
end
