class PagePolicy < ApplicationPolicy
  # def new
  #   @page = Page.new
  #   authorize @page

  def index?
    true
  end
  
  def show?
    record.public? || user.present?
  end
end