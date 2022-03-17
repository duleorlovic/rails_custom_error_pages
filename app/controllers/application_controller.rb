class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    OpenStruct.new(
      email: "my@email.com"
    )
  end
end
