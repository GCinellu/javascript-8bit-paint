class ColorsController < ApplicationController
  def create
    @palette = current_user.palettes.find_by_id(params[:palette_id])
    @palette.colors.create color_params
    render nothing: true
  end

  def destroy
    @color = Color.find(params[:id])
    @color.destroy
    render nothing: true
  end

  private

  def color_params
    params.require(:colors).permit(:value)
  end
end
