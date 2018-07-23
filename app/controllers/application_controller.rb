class ApplicationController < ActionController::API
  include Knock::Authenticable

  private

  def logged_in?
    !!current_user
  end
end
