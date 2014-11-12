class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(params.require(:page).permit(:title, :body))
    if @page.save
      flash[:notice] = "Page was saved."
      redirect_to @page
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params.require(:page).permit(:title, :body))
           flash[:notice] = "Page was updated."
           redirect_to @page
         else
           flash[:error] = "There was an error saving the post. Please try again."
           render :edit
         end
       end

  end
