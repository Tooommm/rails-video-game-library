class LibrarysController < ApplicationController
  def index
    @librarys = Library.all
  end

  def new
    @user = User.find((params[:user_id]))
    @library = Library.new
  end

  def show
    @library = library.find(params[:id])
  end

  def create
  @library = Library.new(library_params)
  if @library.save
    redirect_to library_path(@library)
  else
    render :new
  end
  end

  def destroy
    @library = Library.find(params[:id])
    @library.destroy
    redirect_to librarys_path
  end

  private

  def library_params
    params.require(:library).permit(:name)
  end
end
