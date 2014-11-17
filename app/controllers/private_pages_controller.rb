class PrivatePagesController < ApplicationController
  before_action :check_user
  
  def index 
  end

  def new
    @page = Page.new
    authorize @page
  end
  
  def check_user
    if !current_user.premium
      flash[:notice] = "You're not a preimum  user!"
      redirect_to root_url 
    end
  end


  def create
    @page = Page.new(params.require(:page).permit(:title, :body))
    authorize @page
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
    authorize @page
    if @page.update_attributes(params.require(:post).permit(:title, :body))
  end

  def update
    @page = Page.find(params[:id])
    authorize @page
    if @page.update_attributes(params.require(:page).permit(:title, :body))
           flash[:notice] = "Page was updated."
           redirect_to @page
         else
           flash[:error] = "There was an error saving the post. Please try again."
           render :edit
    end
  end
end