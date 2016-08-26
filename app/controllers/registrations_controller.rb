class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/menus/45'
  end

  def after_inactive_sign_up_path_for(resource)
    '/menus/45'
  end
end
