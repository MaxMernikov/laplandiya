module AdminHelper
  def active_menu(controller, action=nil)
    if action
      'active' if controller.include?(params[:controller]) && action == params[:action]
    else
      'active' if controller.include?(params[:controller])
    end
  end

  def full_form(class_name)
    if [Kit].include? class_name
      'col-xs-12'
    else
      'col-xs-6 col-xs-offset-3'
    end
  end
end