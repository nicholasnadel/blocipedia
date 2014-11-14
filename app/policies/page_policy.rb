class PagePolicy < ApplicationPolicy
  # def new
  #   @page = Page.new
  #   authorize @page

  def index?
    true
  end
  
end