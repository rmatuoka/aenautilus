class User < ActiveRecord::Base
      validates_confirmation_of :password
      validates_presence_of :password, :email
      validates_uniqueness_of :email
end
