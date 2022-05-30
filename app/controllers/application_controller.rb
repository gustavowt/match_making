class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def after_sign_out_path_for(_resource_or_scope)
    rooms_path
  end
end
