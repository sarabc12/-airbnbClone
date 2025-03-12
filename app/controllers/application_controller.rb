class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :public_page?

  private

  def public_page?
    controller_name == "flats" && action_name.in?(["index", "show"])
  end
end
