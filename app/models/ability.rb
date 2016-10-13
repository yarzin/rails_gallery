class Ability
  include CanCan::Ability


  def initialize(user)
    user ||= User.new
    can :manage, :all if user.role == "admin"
  else
    can :read, :all
  end
end