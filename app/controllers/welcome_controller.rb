class WelcomeController < ApplicationController
  def index
    return redirect_to new_user_session_path unless current_user

    @user     = current_user
    @palette  = @user.palettes.first
    @painting = @user.paintings.last
    @colors   = @palette.colors
  end
end
