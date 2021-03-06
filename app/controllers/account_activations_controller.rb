class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
      if user && !user.activated? && user.authenticated?(:activation, params[:id])
        user.activate
        # instead of
        # user.update_attribute(:activated, true)
        # user.update_attribute(:activated_at, Time.zone.now)
        log_in user
        flash[:success] = "Congratulations! Your account is now active!"
        redirect_to user
      else
        flash[:danger] = "Invalid activatation link!"
        redirect_to root_url
      end
  end
end
