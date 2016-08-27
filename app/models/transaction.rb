class Transaction < ActiveRecord::Base
	belongs_to :consumer
  belongs_to :merchant
end
