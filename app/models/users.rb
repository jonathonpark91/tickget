class Users < ActiveRecord::Base
		has_many :tickets
end
