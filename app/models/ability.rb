class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Book, user: user
    can :read, Prologue
  end
end
