module API
  module V1
    class Transactions < Grape::API
      #use Grape::Attack::Throttle    
      prefix  'api'
      version 'v1',using: :accept_version_header      
      resource :transactions do          
        desc "Returns all transactions"
        get do
          	transaction_rec = Transaction.all
					  transaction_rec.as_json            
        end
       end
		end
  end
end

