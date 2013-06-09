require 'nsa_panel/engine'

module NsaPanel
  mattr_accessor :user_class, :username, :password

  def self.user
    user_class.constantize
  end

  def self.associated_models
    user.reflect_on_all_associations
  end

  def self.association(name)
    user.reflect_on_association(name.to_sym)
  end
end
