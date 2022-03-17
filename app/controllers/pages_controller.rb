class PagesController < ApplicationController
  def home
  end

  def error
    raise "I just raised an error"
  end

  def submit
    logger.info "#submit authenticity_token=#{params[:authenticity_token]}"
    # raise ActionController::InvalidAuthenticityToken
    redirect_to root_path
  end
end
