class ApplicationController < ActionController::Base
  before_action :fetch_user

# This sets up the parts required to stop login persisting past the current session
  private
  def fetch_user
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present?
  end
end
