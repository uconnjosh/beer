class Brew < ActiveRecord::Base
  has_and_belongs_to_many :types

end
