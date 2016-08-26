require 'uri'

class RegistrationsController < Devise::RegistrationsController
  # before_action :previous_url, only: :after_sign_up_path_for

  protected

  def after_sign_up_path_for(resource)

  end

  private

  # def previous_url
  #   @previous_url = request.referer
  # end
end
