class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(resource)
    if session[:menu_id] && (menu = Menu.where(id: session[:menu_id]).first)
      "/menus/#{menu.id}"
    end
  end
end


