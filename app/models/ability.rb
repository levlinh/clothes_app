# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize user
    can :create,[User]
    can :read, [Product]
    return if user.blank?

    can [:show, :update], User, id: user.id
    case user.role
    when "admin"
      can :manage, :all
    when "user"
      can :create, Order
    end
  end
end
