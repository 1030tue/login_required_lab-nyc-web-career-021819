class SecretsController < ApplicationController
  before_action :login_required

  def show
    @current_user = current_user
    if @current_user.empty?
      redirect_to "/sessions/new"
    end
  end

end
