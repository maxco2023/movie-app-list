class ListsController < ApplicationController
  def home
  end

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    end
  end

  def show
    @bookmark = Bookmark.new
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    if @list.save
      redirect_to list_path(@list)
    end
  end

  def destroy
    @list = List.find(params[:id])
    if @list.photo.attached?
      @list.photo.purge
    end
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end

end
