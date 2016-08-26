class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    "#{request.referer}"
    raise
  end

  def after_inactive_sign_up_path_for(resource)
    "#{request.referer}"
  end
end
