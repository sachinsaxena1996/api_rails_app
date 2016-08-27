class Consumer < ActiveRecord::Base
 	has_many :transactions
 	has_many :merchants, through: :transactions
end
