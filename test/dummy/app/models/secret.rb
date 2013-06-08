class Secret < ActiveRecord::Base
  attr_accessible :text
  belongs_to :user
end
