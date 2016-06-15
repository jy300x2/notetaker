class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    Note.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:note).permit(:title, :entry)
  end

end
