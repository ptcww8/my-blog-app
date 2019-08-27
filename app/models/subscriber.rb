class Subscriber < ApplicationRecord
	validates  :name, :email, presence:true
  validates_format_of :email,:with => Devise::email_regexp
end
