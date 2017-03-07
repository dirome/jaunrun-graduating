class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :mailbox

  private

  def mailbox 
  	@mailbox ||= current_juan.mailbox
  end

  protected
end
