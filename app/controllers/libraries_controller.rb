class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end

  def new
    @user = User.find(params[:user_id])
    @library = Library.new
  end

  def show
    @library = library.find(params[:id])
  end

  def create
  @library = Library.new(library_params)
  if @library.save
    redirect_to user_libraries_path(@user)
  else
    render :new
  end
  end

  def destroy
    @library = Library.find(params[:id])
    @library.destroy
    redirect_to libraryies_path
  end

  private

  def library_params
    params.require(:library).permit(:name)
  end
end
