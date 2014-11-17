class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.plan.name == "Free"
      can :create, Page, :user_id => user.id
      can :edit, user.shared_page
    end

    if user.plan.name == "Premium"
      can :manage, Page, :user_id => user.id 
      can :edit, user.shared_pages
      can :privatize, Page, :user_id => user.id
    end
    # can :read, Wiki, public: true
  end
end
