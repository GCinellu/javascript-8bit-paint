class PaintingsController < ApplicationController
  def create
    @painting = current_user.paintings.create painting_params
    render nothing:true
  end

  private

  def painting_params
    params.require(:paintings).permit(:label, :canvas)
  end
end
